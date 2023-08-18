require 'rails_helper'

describe TicketsController do
  it { should route(:get, '/tickets').to(action: :index) }

  it { should route(:post, '/tickets').to(action: :create) }

  it { should route(:get, '/tickets/1').to(action: :show, id: 1) }
end
