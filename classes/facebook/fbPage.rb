class FbPage < RepositoryComplex

  attr_reader :details
  attr_reader :feed

  def structure
    {
      :@details => RepositoryHash,
      :@feed => RepositoryHash
    }
  end
  
end
