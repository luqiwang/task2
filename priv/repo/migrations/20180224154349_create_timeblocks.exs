defmodule Task2.Repo.Migrations.CreateTimeblocks do
  use Ecto.Migration

  def change do
    create table(:timeblocks) do
      add :start_time, :bigint
      add :end_time, :bigint
      add :task_id, references(:tasks, on_delete: :delete_all), null: false

      timestamps()
    end

    create index(:timeblocks, [:task_id])
  end
end
