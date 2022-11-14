module PublicationsHelper
    def promedio(id)
        reviews = Publication.find_by(id: id).reviews.pluck(:review)
        @sumatoria = reviews.sum
        @count = reviews.count
        @resultado = @sumatoria / @count rescue 0
    end
end
