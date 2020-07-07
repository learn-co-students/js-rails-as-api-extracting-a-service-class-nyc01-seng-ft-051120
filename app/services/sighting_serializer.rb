class SightingSerializer

    def initialize(sighting_object)
      @sighting = sighting_object
    end

    # class SightingSerializer
    #     def initialize(sighting_object)
    #       @sighting = sighting_object
    #     end
    # end

    def to_serialized_json
        options = {
          include: {
            bird: {
              only: [:name, :species]
            },
            location: {
              only: [:latitude, :longitude]
            }
          },
          except: [:updated_at],
        }
        @sighting.to_json(options)
      end
  
  end