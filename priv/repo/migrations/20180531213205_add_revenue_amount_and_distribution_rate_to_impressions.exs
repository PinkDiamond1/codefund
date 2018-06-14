defmodule CodeFund.Repo.Migrations.AddRevenueAmountAndDistributionRateToImpressions do
  use Ecto.Migration

  def change do
    alter table(:impressions) do
      add :revenue_amount, :decimal, precision: 13, scale: 12, default: 0.0000, null: false
      add :distribution_amount, :decimal, precision: 13, scale: 12, default: 0.0000, null: false
    end
  end
end
