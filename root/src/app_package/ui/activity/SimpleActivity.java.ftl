package ${packageName}.ui.activity;

import ${superClassFqcn};
import android.os.Bundle;

import ${packageName}.R;
<#if generateView>import ${packageName}.presentation.view.${viewName};</#if>
<#if generatePresenter>import ${packageName}.presentation.presenter.${presenterName};</#if>
<#if generatePresenterImpl>import ${packageName}.presentation.implementation.${presenterImplName};</#if>

public class ${activityClass} extends ${superClass} <#if generateView>implements ${viewName}</#if>{
<#if generatePresenter>
	private ${presenterName} mPresenter;
</#if>
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
</#if>
<#if generatePresenterImpl>
		mPresenter = new ${presenterImplName}(this);
</#if>
    }

<#if generatePresenter>
	@Override
    protected void onDestroy() {
        mPresenter.onDestroy();
        super.onDestroy();
    }
</#if>
}
