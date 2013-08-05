class AlphabetController < UIViewController
  stylesheet :app
  
  # just remove the layout block below will solve the leak for UITableViewCell
  layout(:screen) do
  end
  
  def viewDidLoad
    super

    self.title = "Alphabet"

    puts "view.bounds: #{self.view.bounds.inspect}"
    @table = UITableView.alloc.initWithFrame(self.view.bounds)
    @data = ("A".."Z").to_a
    @table.dataSource = self
    @table.delegate = self

    puts "table.bounds: #{@table.bounds.inspect}"

    view.layer.borderColor=UIColor.redColor.CGColor
    view.layer.borderWidth=1

    self.view.addSubview(@table)






  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    @reuseIdentifier ||= "CELL_IDENTIFIER"

    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier) || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:@reuseIdentifier)
    end

    cell.textLabel.text = @data[indexPath.row]
    cell

  end

  def tableView(tableView, numberOfRowsInSection: section)
    @data.count
  end

  def tableView(tableView, didSelectRowAtIndexPath: indexPath)
    tableView.deselectRowAtIndexPath(indexPath, animated: true)

    alert=UIAlertView.alloc.init
    alert.message = "#{@data[indexPath.row]} tapped!"

    alert.addButtonWithTitle("OK")
    alert.show
  end
  def viewWillAppear(animated)
    super(animated)
    @table.frame=view.bounds
  end

  def initWithNibName(name, bundle: bundle)
    super
    self.title = "Alphabet"
    #self.tabBarItem=UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemFavorites, tag: 1)
    self
  end

  
end