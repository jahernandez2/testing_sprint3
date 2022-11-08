module PublicationsHelper
    def promedio(id)
        @sumatoria = Publication.find_by(id: id).reviews.pluck(:review).sum
        @count = Publication.find_by(id: id).reviews.pluck(:review).count
        @resultado = @sumatoria / @count rescue 0
        return @resultado
    end
end
