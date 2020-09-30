from django.urls import path

from .views import BookDetialView, BookListView, SearchResultsListView

urlpatterns = [
    path('', BookListView.as_view(), name='book_list'),
    path('<uuid:pk>', BookDetialView.as_view(), name='book_detail'),
    path('search/', SearchResultsListView.as_view(), name='search_results')
]
