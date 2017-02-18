package de.nikostotz.xtendxcoremaven;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class XtendXcoreMavenActivator implements BundleActivator {

	private static BundleContext context;

	static BundleContext getContext() {
		return context;
	}

	public void start(BundleContext bundleContext) throws Exception {
		XtendXcoreMavenActivator.context = bundleContext;
	}

	public void stop(BundleContext bundleContext) throws Exception {
		XtendXcoreMavenActivator.context = null;
	}

}
