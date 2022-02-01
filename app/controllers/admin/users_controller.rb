# frozen_string_literal: true

module Admin
  class UsersController < Admin::ApplicationController
    before_action :set_admin_user, only: %i[show edit update destroy]
    # after_action :verify_authorized, except: :index
    # after_action :verify_policy_scoped, only: :index
    # GET /admin/users
    def index
      authorize [:admin, User]
      @admin_users = policy_scope(User,
                                  policy_scope_class: Admin::UserPolicy::Scope)
                     .includes(:role).page(params[:page]).per(9)
    end

    # GET /admin/users/1
    def show; end

    # GET /admin/users/new
    def new
      authorize [:admin, User]
      @admin_user = User.new
    end

    # GET /admin/users/1/edit
    def edit; end

    # POST /admin/users
    def create
      @admin_user = User.new(admin_user_params)
      authorize [:admin, @admin_user]
      if @admin_user.save
        redirect_to [:admin, @admin_user], notice: 'User was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /admin/users/1
    def update
      authorize [:admin, @admin_user]
      if @admin_user.update(admin_user_params)
        redirect_to [:admin, @admin_user], notice: 'User was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /admin/users/1
    def destroy
      authorize [:admin, @admin_user]
      @admin_user.destroy
      redirect_to admin_users_url, notice: 'User was successfully destroyed.'
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_admin_user
      @admin_user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :role_id)
    end
  end
end
