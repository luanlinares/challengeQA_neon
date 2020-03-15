class Planetget

    def planets_api
    
        HTTParty.get(
            "http://swapi.co/api/planets/",
            
            headers:{
                "Content-Type" => "application/jason",
            },
        )
    end 

    def new_result
        HTTParty.get(
            "http://swapi.co/api/planets/",
            headers:{
            "Content-Type" => "application/jason",
            },
        )
    end
    
end 