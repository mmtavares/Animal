require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe DoacaosController do

  # This should return the minimal set of attributes required to create a valid
  # Doacao. As you add validations to Doacao, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DoacaosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all doacaos as @doacaos" do
      doacao = Doacao.create! valid_attributes
      get :index, {}, valid_session
      assigns(:doacaos).should eq([doacao])
    end
  end

  describe "GET show" do
    it "assigns the requested doacao as @doacao" do
      doacao = Doacao.create! valid_attributes
      get :show, {:id => doacao.to_param}, valid_session
      assigns(:doacao).should eq(doacao)
    end
  end

  describe "GET new" do
    it "assigns a new doacao as @doacao" do
      get :new, {}, valid_session
      assigns(:doacao).should be_a_new(Doacao)
    end
  end

  describe "GET edit" do
    it "assigns the requested doacao as @doacao" do
      doacao = Doacao.create! valid_attributes
      get :edit, {:id => doacao.to_param}, valid_session
      assigns(:doacao).should eq(doacao)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Doacao" do
        expect {
          post :create, {:doacao => valid_attributes}, valid_session
        }.to change(Doacao, :count).by(1)
      end

      it "assigns a newly created doacao as @doacao" do
        post :create, {:doacao => valid_attributes}, valid_session
        assigns(:doacao).should be_a(Doacao)
        assigns(:doacao).should be_persisted
      end

      it "redirects to the created doacao" do
        post :create, {:doacao => valid_attributes}, valid_session
        response.should redirect_to(Doacao.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved doacao as @doacao" do
        # Trigger the behavior that occurs when invalid params are submitted
        Doacao.any_instance.stub(:save).and_return(false)
        post :create, {:doacao => {}}, valid_session
        assigns(:doacao).should be_a_new(Doacao)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Doacao.any_instance.stub(:save).and_return(false)
        post :create, {:doacao => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested doacao" do
        doacao = Doacao.create! valid_attributes
        # Assuming there are no other doacaos in the database, this
        # specifies that the Doacao created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Doacao.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => doacao.to_param, :doacao => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested doacao as @doacao" do
        doacao = Doacao.create! valid_attributes
        put :update, {:id => doacao.to_param, :doacao => valid_attributes}, valid_session
        assigns(:doacao).should eq(doacao)
      end

      it "redirects to the doacao" do
        doacao = Doacao.create! valid_attributes
        put :update, {:id => doacao.to_param, :doacao => valid_attributes}, valid_session
        response.should redirect_to(doacao)
      end
    end

    describe "with invalid params" do
      it "assigns the doacao as @doacao" do
        doacao = Doacao.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Doacao.any_instance.stub(:save).and_return(false)
        put :update, {:id => doacao.to_param, :doacao => {}}, valid_session
        assigns(:doacao).should eq(doacao)
      end

      it "re-renders the 'edit' template" do
        doacao = Doacao.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Doacao.any_instance.stub(:save).and_return(false)
        put :update, {:id => doacao.to_param, :doacao => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested doacao" do
      doacao = Doacao.create! valid_attributes
      expect {
        delete :destroy, {:id => doacao.to_param}, valid_session
      }.to change(Doacao, :count).by(-1)
    end

    it "redirects to the doacaos list" do
      doacao = Doacao.create! valid_attributes
      delete :destroy, {:id => doacao.to_param}, valid_session
      response.should redirect_to(doacaos_url)
    end
  end

end
