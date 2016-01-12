<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <instantiate from="root/src/app_package/ui/activity/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/activity/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}//ui/activity/${activityClass}.java" />

 <#if generateView>
    <instantiate from="root/src/app_package/presentation/view/SimpleView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/view/${viewName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/presentation/view/${viewName}.java" />
 </#if>

  <#if generatePresenter>
    <instantiate from="root/src/app_package/presentation/presenter/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/presenter/${presenterName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/presentation/presenter/${presenterName}.java" />
 </#if>

  <#if generatePresenterImpl>
    <instantiate from="root/src/app_package/presentation/implementation/SimplePresenterImpl.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/implementation/${presenterImplName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/presentation/implementation/${presenterImplName}.java" />
 </#if>

</recipe>
