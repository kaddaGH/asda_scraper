pages << {
    page_type: 'products_listing',
    method: 'GET',
    url: "https://groceries.asda.com/cmscontent/json/pages/browse/shelf?Endeca_user_segments=anonymous%7Cstore_4565%7Cwapp%7Cvp_XL%7CZero_Order_Customers%7CDelivery_Pass_Older_Than_12_Months%7Cdp-false%7C1007%7C1019%7C1020%7C1023%7C1024%7C1027%7C1038%7C1041%7C1042%7C1043%7C1047%7C1053%7C1055%7C1057%7C1059%7C1067%7C1070%7C1082%7C1087%7C1097%7C1098%7C1099%7C1100%7C1102%7C1105%7C1107%7C1109%7C1110%7C1111%7C1112%7C1116%7C1117%7C1119%7C1123%7C1124%7C1126%7C1128%7C1130%7C1140%7C1141%7C1144%7C1147%7C1150%7C1152%7C1157%7C1159%7C1160%7C1165%7C1166%7C1167%7C1169%7C1170%7C1172%7C1173%7C1174%7C1176%7C1177%7C1178%7C1179%7C1180%7C1182&storeId=4565&shipDate=1541462400000&N=106234&No=0&Nrpp=60&requestorigin=gi&_=1541539592602",
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