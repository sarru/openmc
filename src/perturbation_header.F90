module perturbation_header

  implicit None

  type, abstract :: Perturbation
    integer  :: id
  end type Perturbation

  type, extends(Perturbation) :: XSPerturbation
    integer  :: nuclide
    integer  :: reaction
  end type XSPerturbation

  type, extends(Perturbation) :: DensityPerturbation
    integer  :: material
  end type DensityPerturbation

  !type, extends(Perturbation) :: FractionPerturbation
  !end type FractionPerturbation

  type :: PerturbationContainer
    class(Perturbation), allocatable  :: obj
  end type PerturbationContainer

end module perturbation_header
