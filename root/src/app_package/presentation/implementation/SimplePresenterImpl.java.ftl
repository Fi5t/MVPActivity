package ${packageName}.presentation.implementation;

import ${packageName}.presentation.view.${viewName};
import ${packageName}.presentation.presenter.${presenterName};

public class ${presenterImplName} implements ${presenterName} {

	private ${viewName} mView;

	public ${presenterImplName}(final ${viewName} view) {
        mView = view;
    }

    @Override
    public void onDestroy() {
        mView = null;
    }
}