require 'spec_helper'

describe PaymentDecorator do
  let(:student) { create :student}
  let(:payment) { create :payment, value: 150.00, date: '2010-10-03', student: student }

  describe "#value" do
    subject { payment.decorate.value_str }
    it { is_expected.to eq '150.00' }
  end

  describe "#date" do
    subject { payment.decorate.date_str }
    it { is_expected.to eq '2010-10-03' }
  end
end
