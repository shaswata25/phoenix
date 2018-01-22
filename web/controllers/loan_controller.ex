defmodule LearningPhx.LoanController do
    use LearningPhx.Web, :controller
    alias LearningPhx.{Repo, Loan}
  
    def index(conn, _params) do

        loans = Repo.all(Loan)
        render(conn, "index.html", loans: loans)
    end

       # def extend(conn, params) do 
            
       # end
  end
  
