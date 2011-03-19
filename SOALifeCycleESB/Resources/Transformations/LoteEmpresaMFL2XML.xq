(:: pragma bea:mfl-element-parameter parameter="$loteEmpresa1" type="LoteEmpresa@" location="../LoteEmpresa.mfl" ::)
(:: pragma bea:global-element-return element="ns0:loteEmpresa" location="../../Interfaces/Schemas/DomainModel.xsd" ::)

declare namespace ns0 = "http://www.soaexpert.com.br/domain";
declare namespace xf = "http://tempuri.org/SOALifeCycleESB/Resources/Transformations/LoteEmpresaMFL2XML/";

declare function xf:LoteEmpresaMFL2XML($loteEmpresa1 as element())
    as element(ns0:loteEmpresa) {
        <ns0:loteEmpresa>
            <ns0:id>{ xs:int($loteEmpresa1/id) }</ns0:id>
            {
                for $empresa in $loteEmpresa1/empresa
                return
                    <ns0:empresas/>
            }
        </ns0:loteEmpresa>
};

declare variable $loteEmpresa1 as element() external;

xf:LoteEmpresaMFL2XML($loteEmpresa1)
