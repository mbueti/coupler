module hurricane_wind_common
  implicit none
  integer,PARAMETER :: im=108,jm=20,imm1=im-1,jmm1=jm-1,KB=23,KBM1=KB-1
  integer,PARAMETER :: MMX=6,NMX=10,PLN=100
  REAL julday
  REAL TMP
  real rho_0
  data RHO_0/1024.E0/
  integer iend,year,nbc,nstorms
  integer IINT,i,j,n,n1,IPRINT
  integer*4 enddate
  CHARACTER*40 FRSTI
  CHARACTER*15 pathname1
  real SWRAD(IM,JM),SSTIN(IM,JM),IDAMP,ISMOTH,  &
       DTE2,DTI2,NREAD,IPRTH1,INOWINDH,DAYI,&
       SMH,MODE,TIME0,IMAY
  REAL LAMBDA,PHI,REARTH,LATMIN,LATMAX,LONGMIN,LONGMAX,CMP
  real pi,small,beta,ispadv,smoth,horcon,iswtch
  real poslon,poslat
  real DTE,TPRNU,UMOL,GRAV,TIME,RAMP,TBIAS,SBIAS
  real DX(IM,JM),DY(IM,JM),ART(IM,JM),ARU(IM,JM),ARV(IM,JM),  &
       FSM(IM,JM),COR(IM,JM),WUSURF(IM,JM),WVSURF(IM,JM),     &
       WTSURF(IM,JM),windx(IM,JM),windy(IM,JM)
  real tauavr,taumax,awucon,bwucon,migtau,xcen, ycen, prsmin, wndmax
  character*19,dimension(PLN,PLN) :: name_vit(PLN,PLN)
  integer*4,dimension(PLN,PLN)    :: date_vit(PLN,PLN)
  integer,dimension(PLN,PLN)      :: hour_vit(PLN,PLN),lat_vit(PLN,PLN),long_vit(PLN,PLN),mx_vit(PLN,PLN),rmw_vit(PLN,PLN)
  character*1,dimension(PLN,PLN)  :: lns_vit(PLN,PLN),lew_vit(PLN,PLN)
  integer,dimension(PLN,5,PLN)    :: garb_vit(PLN,5,PLN)
  integer,dimension(PLN,4,PLN)    :: Rd1_vit(PLN,4,PLN),Rd2_vit(PLN,4,PLN)
end module hurricane_wind_common
