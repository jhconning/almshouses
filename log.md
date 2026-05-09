# Almshouses Project Log

## [2026-05-08 22:59] - Session Recovery & Spatial Model Documentation
**Conversation ID:** `c936f0fa-834c-4a2e-a6ec-e93001d737a3`

Recovered the development history of the `Almshouses.ipynb` didactic notebook, which adapts the Quantitative Spatial Economics (QSE) framework to model 19th-century homelessness and almshouses.

### What Was Accomplished:
1. **The $2N$ Spatial Solver:** Expanded the standard Fréchet utility model so that individuals in $N$ counties choose between $2N$ options: Employment ($E_j$) or the Almshouse ($H_j$). 
2. **Interactive Demos:** Built a "Race to the Bottom" widget simulating a 5-county region to illustrate spatial spillovers—when the center county makes its relief benefit ($B_3$) harsher, its indigent population spills into neighboring counties.
3. **Didactic Preamble:** Rewrote the mathematical and historical documentation. Explicitly formalized how extreme idiosyncratic life shocks (drawn from the Fréchet distribution) drive healthy workers to accept harsh "indoor relief" when their employment utility collapses (e.g., due to injury or illness).
4. **Solver Mechanics:** Documented the dampened fixed-point iteration algorithm used to guarantee convergence under high elasticity.

### Next Steps:
- Apply this theoretical framework to Matthew Baker's historical panel data on New York/New England almshouses using a 2D network.
- Discuss structural inversion to recover elasticity parameters ($\theta, \kappa$) and unobserved stigma penalties ($B_j$).
