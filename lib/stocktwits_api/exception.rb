module StockTwits
  class StockTwitsError < RuntimeError

  end

  class Exception
    def is_ctrl_c_exception?
      [SystemExit, Interrupt, IRB::Abort].index(self.class).present?
    end
  end
end