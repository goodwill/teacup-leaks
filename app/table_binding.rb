class TableBinding 
  def initialize(table, data, display_field)
    @table=WeakRef.new(table)
    @data=WeakRef.new(data)
    @table.delegate=self
    @table.dataSource=self    
    @display_field=display_field
  end
  
end