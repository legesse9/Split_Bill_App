class Trip < ApplicationRecord
    has_many :trip_participations
    has_many :users, through: :trip_participations
    has_many :expenses

    # app/models/trip.rb
  def balances
    balances = Hash.new { |h, k| h[k] = { paid: 0.0, owed: 0.0 } }
  
    expenses.each do |expense|
      # Add the full amount to payer
      balances[expense.payer_id][:paid] += expense.amount.to_f
  
      # Divide the amount among all participants in the expense
      shares = expense.expense_shares
      total_participants = shares.count
      next if total_participants == 0
  
      split_amount = expense.amount.to_f / total_participants
  
      shares.each do |share|
        balances[share.user_id][:owed] += split_amount
      end
    end
  
    # Net balance = paid - owed
    balances.transform_values do |data|
      data.merge(balance: data[:paid] - data[:owed])
    end
  end
  
end
