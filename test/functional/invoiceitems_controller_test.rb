require 'test_helper'

class InvoiceitemsControllerTest < ActionController::TestCase
  setup do
    @invoiceitem = invoiceitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoiceitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoiceitem" do
    assert_difference('Invoiceitem.count') do
      post :create, invoiceitem: { amount: @invoiceitem.amount, description: @invoiceitem.description, invoice_id: @invoiceitem.invoice_id }
    end

    assert_redirected_to invoiceitem_path(assigns(:invoiceitem))
  end

  test "should show invoiceitem" do
    get :show, id: @invoiceitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoiceitem
    assert_response :success
  end

  test "should update invoiceitem" do
    put :update, id: @invoiceitem, invoiceitem: { amount: @invoiceitem.amount, description: @invoiceitem.description, invoice_id: @invoiceitem.invoice_id }
    assert_redirected_to invoiceitem_path(assigns(:invoiceitem))
  end

  test "should destroy invoiceitem" do
    assert_difference('Invoiceitem.count', -1) do
      delete :destroy, id: @invoiceitem
    end

    assert_redirected_to invoiceitems_path
  end
end
