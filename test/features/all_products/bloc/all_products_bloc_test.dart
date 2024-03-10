import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/transformers.dart';
import 'package:slash_dot/features/all_products/bloc/all_products_bloc.dart';
import 'package:slash_dot/slash_dot.dart';

import 'all_products_bloc_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ProductsService>()])
void main() {
  group(
    'AllProductsBloc',
    () {
      late MockProductsService mockProductsService;
      const List<Product> products = [
        Product(
          id: 1,
          name: 'name',
          description: 'description',
          brand: Brand(
            id: 1,
            brandName: 'name',
            brandDescription: 'brandDescription',
            brandType: 'brandType',
            brandMobileNumber: 'brandMobileNumber',
            brandEmailAddress: 'brandEmailAddress',
            brandLogoImagePath: 'brandLogoImagePath',
          ),
          brandId: 1,
          rating: 1,
          variations: [],
        ),
        Product(
          id: 2,
          name: 'name2',
          description: 'description2',
          brand: Brand(
            id: 1,
            brandName: 'name',
            brandDescription: 'brandDescription',
            brandType: 'brandType',
            brandMobileNumber: 'brandMobileNumber',
            brandEmailAddress: 'brandEmailAddress',
            brandLogoImagePath: 'brandLogoImagePath',
          ),
          brandId: 1,
          rating: 2,
          variations: [],
        ),
        Product(
          id: 3,
          name: 'name3',
          description: 'description3',
          brand: Brand(
            id: 1,
            brandName: 'name',
            brandDescription: 'brandDescription',
            brandType: 'brandType',
            brandMobileNumber: 'brandMobileNumber',
            brandEmailAddress: 'brandEmailAddress',
            brandLogoImagePath: 'brandLogoImagePath',
          ),
          brandId: 1,
          rating: 3,
          variations: [],
        ),
        Product(
          id: 4,
          name: 'name4',
          description: 'description4',
          brand: Brand(
            id: 1,
            brandName: 'name',
            brandDescription: 'brandDescription',
            brandType: 'brandType',
            brandMobileNumber: 'brandMobileNumber',
            brandEmailAddress: 'brandEmailAddress',
            brandLogoImagePath: 'brandLogoImagePath',
          ),
          brandId: 1,
          rating: 4,
          variations: [],
        ),
      ];

      blocTest(
        'Starts with AllProductsInitial',
        setUp: () => mockProductsService = _mockProductsService(products, 4),
        build: () => AllProductsBloc(
          productService: MockProductsService(),
          loadLimit: 1,
        ),
        verify: (b) => b.state is AllProductsInitial,
      );

      blocTest(
        'LoadMore loads from ProductsService',
        setUp: () => mockProductsService = _mockProductsService(products, 4),
        build: () =>
            AllProductsBloc(productService: mockProductsService, loadLimit: 1),
        act: (b) async {
          b.add(const AllProductsLoadMore());
          await b.stream.whereType<AllProductsLoaded>().first;
        },
        expect: () => [
          isA<AllProductsLoading>(),
          isA<AllProductsLoaded>()
              .having(
                (s) => s.products.length,
                'products.length',
                1,
              )
              .having(
                (s) => s.hasMore,
                'hasMore',
                true,
              )
              .having(
                (s) => s.page,
                'page',
                1,
              )
              .having(
                (s) => s.products.first,
                'products.first',
                products.first,
              ),
        ],
      );

      blocTest(
        'Throttles multiple LoadMore requests, but responds only to first one',
        setUp: () => mockProductsService = _mockProductsService(products, 4),
        build: () =>
            AllProductsBloc(productService: mockProductsService, loadLimit: 1),
        act: (b) async {
          for (int i = 0; i < 10; i++) {
            b.add(const AllProductsLoadMore());
          }

          await Future.delayed(const Duration(seconds: 2));

          for (int i = 0; i < 10; i++) {
            b.add(const AllProductsLoadMore());
          }
          await b.stream.whereType<AllProductsLoaded>().first;
        },
        expect: () => [
          isA<AllProductsLoading>(),
          isA<AllProductsLoaded>()
              .having(
                (s) => s.products.length,
                'products.length',
                1,
              )
              .having(
                (s) => s.hasMore,
                'hasMore',
                true,
              )
              .having(
                (s) => s.page,
                'page',
                1,
              )
              .having(
                (s) => s.products.first,
                'products.first',
                products.first,
              ),
          isA<AllProductsLoading>(),
          isA<AllProductsLoaded>()
              .having(
                (s) => s.products.length,
                'products.length',
                2,
              )
              .having(
                (s) => s.hasMore,
                'hasMore',
                true,
              )
              .having(
                (s) => s.page,
                'page',
                2,
              )
              .having(
                (s) => s.products.first,
                'products.first',
                products[0],
              )
              .having(
                (s) => s.products[1],
                'products[1]',
                products[1],
              ),
        ],
      );

      blocTest(
        'Appends the results of multiple load requests',
        setUp: () => mockProductsService = _mockProductsService(products, 4),
        build: () =>
            AllProductsBloc(productService: mockProductsService, loadLimit: 1),
        act: (b) async {
          for (int i = 0; i < products.length; i++) {
            b.add(const AllProductsLoadMore());
            await b.stream.whereType<AllProductsLoaded>().first;
            await Future.delayed(const Duration(seconds: 1));
          }
        },
        expect: () => [
          ..._loadMoreExpectations(
            products,
            page: 1,
            limit: 1,
          ),
          ..._loadMoreExpectations(
            products,
            page: 2,
            limit: 1,
          ),
          ..._loadMoreExpectations(
            products,
            page: 3,
            limit: 1,
          ),
          ..._loadMoreExpectations(
            products,
            page: 4,
            limit: 1,
          ),
        ],
      );
    },
  );
}

MockProductsService _mockProductsService(List<Product> products, int pages) {
  final MockProductsService mockProductsService = MockProductsService();
  when(
    mockProductsService.getProducts(
      limit: captureAnyNamed('limit'),
      page: captureAnyNamed('page'),
    ),
  ).thenAnswer((i) async {
    final int page = i.namedArguments[#page] as int;
    final int limit = i.namedArguments[#limit] as int;

    final int start = (page - 1) * limit;
    final int end = start + limit;

    return (products.sublist(start, end), page < pages);
  });

  return mockProductsService;
}

List<Matcher> _loadMoreExpectations(
  List<Product> products, {
  required int page,
  required int limit,
}) {
  return [
    isA<AllProductsLoading>(),
    isA<AllProductsLoaded>()
        .having(
          (s) => s.products.length,
          'products.length',
          limit * page,
        )
        .having(
          (s) => s.hasMore,
          'hasMore',
          page < products.length / limit,
        )
        .having(
          (s) => s.page,
          'page',
          page,
        )
        .having(
          (s) => s.products,
          'products',
          products.sublist(0, page * limit),
        ),
  ];
}
