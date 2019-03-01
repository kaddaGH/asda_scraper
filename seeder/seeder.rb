pages << {
    page_type: 'products_listing',
    method: 'GET',
    url: "https://groceries.asda.com/api/items/view?itemid=1000029780616%2C1000029780803%2C1000000475186%2C910001036913%2C910000445293%2C76712170%2C910002476394%2C910002476256%2C910002475814&responsegroup=extended&cacheable=true&storeid=4565&shipdate=currentDate&requestorigin=gi%22",
    vars: {
        'input_type' => 'taxonomy',
        'search_term' => '-',
        'page' => 1
    }


}
search_terms = ['Red Bull', 'RedBull', 'Energético', 'Energéticos']
search_terms.each do |search_term|
  pages << {
      page_type: 'products_listing',
      method: 'GET',
      url: "https://groceries.asda.com/api/items/search?pagenum=1&productperpage=250&keyword=#{search_term.gsub(" ", "+")}&contentid=New_IM_Search_WithResults_promo_1&htmlassociationtype=0&listType=12&storeid=4565&sortby=relevance+desc&cacheable=true&fromgi=gi&requestorigin=gi",
          vars: {
          'input_type' => 'search',
          'search_term' => search_term,
          'page' => 1
      }


  }

end