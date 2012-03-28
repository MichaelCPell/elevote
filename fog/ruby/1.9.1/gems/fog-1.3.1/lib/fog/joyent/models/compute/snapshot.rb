module Fog
  module Compute
    class Joyent
      class Snapshot < Fog::Model
        identity :name

        attribute :name
        attribute :state
        attribute :machine_id
        attribute :created, :type => :time
        attribute :updated, :type => :time

        def reload
          requires :name
          requires :machine_id

          self.connection.snapshots.get(self.machine_id, self.name)
        end

        def start
          requires :name
          requires :machine_id

          self.connection.start_machine_from_snapshot(self.machine_id, self.name)
          true
        end

        def destroy
          requires :name
          requires :machine_id

          self.connection.delete_machine_snapshot(self.machine_id, self.name)
          true
        end

        def machine
          requires :machine_id

          self.connection.servers.get(self.machine_id)
        end

      end
    end
  end
end
