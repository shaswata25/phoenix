# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     LearningPhx.Repo.insert!(%LearningPhx.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will halt execution if something goes wrong.
alias LearningPhx.{Repo}
[%{title: "Programming Phoenix 1.3", code: "A", start_date: "09-01-2018"  ,due_date: "16-01-2018"  ,times_extended: 0},
%{title: "Secrets of the JavaScript ninja", code: "A", start_date: "19-12-2017 "  ,due_date: "16-01-2018"  ,times_extended: 4},
%{title: "The Little Prince", code: "A", start_date: "07-08-2017"  ,due_date: "21-08-2017"  ,times_extended: 1},
%{title: "The Return of the King", code: "C", start_date: "03-06-2017 "  ,due_date: "24-06-2017 "  ,times_extended: 0},
%{title: "The Two Towers", code: "C", start_date: "03-06-2017 "  ,due_date: "12-06-2017 "  ,times_extended: 0},
%{title: "The Fellowship of the Ring", code: "C", start_date: "15-06-2017 "  ,due_date: "05-06-2017 "  ,times_extended:0},]
|> Enum.map(fn user_data -> User.changeset(%Loan{}, user_data) end)
|> Enum.each(fn changeset -> Repo.insert!(changeset) end)