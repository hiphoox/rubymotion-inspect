# -*- encoding : utf-8 -*-
class RMIExpositorsController < UINavigationController
  def init
    super.tap do

      self.navigationBar.barStyle = UIBarStyleBlack

      controller = RMISpeakerListViewController.alloc.init(:talks)
      controller.navigationItem.title = "Expositores"
      self.setViewControllers([controller], animated: false)

    end
  end

  def shouldAutorotate
    false
  end
end
