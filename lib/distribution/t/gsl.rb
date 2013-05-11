module Distribution
  module T
    module GSL_
      class << self

        def pdf(x,k)
          GSL::Ran.tdist_pdf(x,k)
        end
        # Return the P-value of the corresponding integral with 
        # k degrees of freedom
        def p_value(pr,k)
          GSL::Cdf.tdist_Pinv(pr,k)
        end
        #T cumulative distribution function(cdf)
        #
        # Returns the integral of T-distribution
        # with k degees of freedom over [0, x]
        def cdf(x, k)
          GSL::Cdf.tdist_P(x.to_f, k)
        end
      end
    end
  end
end
