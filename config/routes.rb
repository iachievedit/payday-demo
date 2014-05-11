PaydayDemo::Application.routes.draw do
  get "invoices/pdf/:id" => "invoices#pdf"
end
