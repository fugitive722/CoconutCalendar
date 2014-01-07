#include <monotouch/monotouch.h>
#include <objc/objc.h>
#include <objc/runtime.h>
#include <UIKit/UIKit.h>
#include <Foundation/Foundation.h>


static MonoMethod *method_1 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Foundation_NSObject_NSObject_Disposer__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_1)
		method_1 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_1));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_1, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_2 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Foundation_NSObject_NSObject_Disposer_Drain (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_2)
		method_2 = get_method_for_selector ([this class], sel).method->method;
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_2, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_2, NULL, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_3 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Foundation_NSAsyncActionDispatcher_Apply (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_3)
		method_3 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_3)));
		}
	mono_runtime_invoke (method_3, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_4 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Foundation_NSActionDispatcher_Apply (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_4)
		method_4 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_4)));
		}
	mono_runtime_invoke (method_4, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_5 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIControlEventProxy_Activated (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_5)
		method_5 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_5)));
		}
	mono_runtime_invoke (method_5, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_6 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIPickerViewModel__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_6)
		method_6 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_6));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_6, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_7 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIBarButtonItem_Callback__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_7)
		method_7 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_7));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_7, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_8 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIBarButtonItem_Callback_Call (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_8)
		method_8 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_8)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_8, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_8, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_9 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIGestureRecognizer_Token__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_9)
		method_9 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_9));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_9, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_10 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_10)
		method_10 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_10));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_10, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_11 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate_ShouldBeginEditing (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_11)
		method_11 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_11)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_11, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	void* retval = (void *) mono_runtime_invoke (method_11, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_12 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate_EditingStarted (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_12)
		method_12 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_12)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_12, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_12, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_13 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate_ShouldEndEditing (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_13)
		method_13 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_13)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_13, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	void* retval = (void *) mono_runtime_invoke (method_13, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_14 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate_EditingEnded (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_14)
		method_14 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_14)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_14, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_14, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_15 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate_ShouldClear (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_15)
		method_15 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_15)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_15, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	void* retval = (void *) mono_runtime_invoke (method_15, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_16 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate_ShouldReturn (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_16)
		method_16 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_16)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_16, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	void* retval = (void *) mono_runtime_invoke (method_16, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_17 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate_ShouldChangeCharacters (id this, SEL sel, id p0, NSRange p1, NSString * p2)
{
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_17)
		method_17 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_17)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_17, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2 ? mono_string_new (mono_domain_get (), [p2 UTF8String]) : NULL;
	void* retval = (void *) mono_runtime_invoke (method_17, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_18 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITableViewSource__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_18)
		method_18 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_18));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_18, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_19 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_AppDelegate__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_19)
		method_19 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_19));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_19, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_20 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_AppDelegate_FinishedLaunching (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_20)
		method_20 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_20)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_20, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_20, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	void* retval = (void *) mono_runtime_invoke (method_20, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_21 = NULL;
void *
native_to_managed_trampoline_MBProgressHUD_MTMBProgressHUD__MBProgressHUDDelegate__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_21)
		method_21 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_21));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_21, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_22 = NULL;
void *
native_to_managed_trampoline_MBProgressHUD_MTMBProgressHUD__MBProgressHUDDelegate_HudWasHidden (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_22)
		method_22 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_22)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_22, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_22, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_23 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate_Clicked (id this, SEL sel, id p0, int p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_23)
		method_23 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_23)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_23, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	mono_runtime_invoke (method_23, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_24 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate_Canceled (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_24)
		method_24 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_24)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_24, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_24, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_25 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate_WillPresent (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_25)
		method_25 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_25)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_25, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_25, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_26 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate_Presented (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_26)
		method_26 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_26)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_26, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_26, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_27 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate_WillDismiss (id this, SEL sel, id p0, int p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_27)
		method_27 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_27)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_27, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	mono_runtime_invoke (method_27, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_28 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate_Dismissed (id this, SEL sel, id p0, int p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_28)
		method_28 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_28)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_28, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	mono_runtime_invoke (method_28, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_29 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIGestureRecognizer_ParameterlessDispatch_Activated (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_29)
		method_29 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_29)));
		}
	mono_runtime_invoke (method_29, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_30 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIWebView__UIWebViewDelegate__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_30)
		method_30 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_30));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_30, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_31 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIWebView__UIWebViewDelegate_ShouldStartLoad (id this, SEL sel, id p0, id p1, int p2)
{
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_31)
		method_31 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_31)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_31, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_31, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;
	void* retval = (void *) mono_runtime_invoke (method_31, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_32 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIWebView__UIWebViewDelegate_LoadStarted (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_32)
		method_32 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_32)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_32, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_32, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_33 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIWebView__UIWebViewDelegate_LoadingFinished (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_33)
		method_33 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_33)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_33, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_33, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_34 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UIWebView__UIWebViewDelegate_LoadFailed (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_34)
		method_34 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_34)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_34, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_34, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	mono_runtime_invoke (method_34, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_35 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_PickerModel_GetRowsInComponent (id this, SEL sel, id p0, int p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_35)
		method_35 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_35)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_35, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	void* retval = (void *) mono_runtime_invoke (method_35, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_36 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_PickerModel_GetComponentCount (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_36)
		method_36 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_36)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_36, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	void* retval = (void *) mono_runtime_invoke (method_36, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_37 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_PickerModel_GetTitle (id this, SEL sel, id p0, int p1, int p2)
{
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_37)
		method_37 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_37)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_37, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = &p2;
	void* retval = (void *) mono_runtime_invoke (method_37, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		char *str = mono_string_to_utf8 ((MonoString *) retval);
		NSString *nsstr = [[NSString alloc] initWithUTF8String:str];
		[nsstr autorelease];
		mono_free (str);
		res = nsstr;
	}
	return res;
}

static MonoMethod *method_38 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_PickerModel_Selected (id this, SEL sel, id p0, int p1, int p2)
{
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_38)
		method_38 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_38)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_38, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = &p2;
	mono_runtime_invoke (method_38, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_39 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_OwnerDrawnElement_OwnerDrawnCellView_Draw (id this, SEL sel, CGRect p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_39)
		method_39 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_39)));
		}
	arg_ptrs [0] = &p0;
	mono_runtime_invoke (method_39, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_40 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_RefreshTableHeaderView_LayoutSubviews (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_40)
		method_40 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_40)));
		}
	mono_runtime_invoke (method_40, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_41 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_RefreshTableHeaderView_Draw (id this, SEL sel, CGRect p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_41)
		method_41 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_41)));
		}
	arg_ptrs [0] = &p0;
	mono_runtime_invoke (method_41, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_42 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_MessageSummaryView__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_42)
		method_42 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_42));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_42, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_43 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_MessageSummaryView_Draw (id this, SEL sel, CGRect p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_43)
		method_43 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_43)));
		}
	arg_ptrs [0] = &p0;
	mono_runtime_invoke (method_43, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_44 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_HtmlElement_WebViewController_ShouldAutorotateToInterfaceOrientation (id this, SEL sel, int p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_44)
		method_44 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_44)));
		}
	arg_ptrs [0] = &p0;
	void* retval = (void *) mono_runtime_invoke (method_44, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_45 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DateTimeElement_MyViewController_ViewWillDisappear (id this, SEL sel, bool p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_45)
		method_45 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_45)));
		}
	arg_ptrs [0] = &p0;
	mono_runtime_invoke (method_45, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_46 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DateTimeElement_MyViewController_DidRotate (id this, SEL sel, int p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_46)
		method_46 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_46)));
		}
	arg_ptrs [0] = &p0;
	mono_runtime_invoke (method_46, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_47 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DateTimeElement_MyViewController_ShouldAutorotateToInterfaceOrientation (id this, SEL sel, int p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_47)
		method_47 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_47)));
		}
	arg_ptrs [0] = &p0;
	void* retval = (void *) mono_runtime_invoke (method_47, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_48 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_SearchDelegate_OnEditingStarted (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_48)
		method_48 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_48)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_48, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_48, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_49 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_SearchDelegate_OnEditingStopped (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_49)
		method_49 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_49)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_49, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_49, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_50 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_SearchDelegate_TextChanged (id this, SEL sel, id p0, NSString * p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_50)
		method_50 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_50)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_50, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = p1 ? mono_string_new (mono_domain_get (), [p1 UTF8String]) : NULL;
	mono_runtime_invoke (method_50, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_51 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_SearchDelegate_CancelButtonClicked (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_51)
		method_51 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_51)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_51, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_51, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_52 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_SearchDelegate_SearchButtonClicked (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_52)
		method_52 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_52)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_52, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_52, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_53 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_AccessoryButtonTapped (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_53)
		method_53 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_53)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_53, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_53, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	mono_runtime_invoke (method_53, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_54 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_RowsInSection (id this, SEL sel, id p0, int p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_54)
		method_54 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_54)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_54, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	void* retval = (void *) mono_runtime_invoke (method_54, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_55 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_NumberOfSections (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_55)
		method_55 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_55)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_55, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	void* retval = (void *) mono_runtime_invoke (method_55, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_56 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_TitleForHeader (id this, SEL sel, id p0, int p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_56)
		method_56 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_56)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_56, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	void* retval = (void *) mono_runtime_invoke (method_56, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		char *str = mono_string_to_utf8 ((MonoString *) retval);
		NSString *nsstr = [[NSString alloc] initWithUTF8String:str];
		[nsstr autorelease];
		mono_free (str);
		res = nsstr;
	}
	return res;
}

static MonoMethod *method_57 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_TitleForFooter (id this, SEL sel, id p0, int p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_57)
		method_57 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_57)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_57, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	void* retval = (void *) mono_runtime_invoke (method_57, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		char *str = mono_string_to_utf8 ((MonoString *) retval);
		NSString *nsstr = [[NSString alloc] initWithUTF8String:str];
		[nsstr autorelease];
		mono_free (str);
		res = nsstr;
	}
	return res;
}

static MonoMethod *method_58 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_GetCell (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_58)
		method_58 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_58)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_58, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_58, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	void* retval = (void *) mono_runtime_invoke (method_58, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_59 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_WillDisplay (id this, SEL sel, id p0, id p1, id p2)
{
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_59)
		method_59 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_59)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_59, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_59, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	NSObject *nsobj2 = (NSObject *) p2;
		MonoObject *mobj2 = NULL;
		bool created2 = false;
		if (nsobj2) {
			mobj2 = get_nsobject_with_type_for_ptr_created (nsobj2, false, monotouch_get_parameter_type (method_59, 2), &created2);
		}
		arg_ptrs [2] = mobj2;
	mono_runtime_invoke (method_59, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_60 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_RowDeselected (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_60)
		method_60 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_60)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_60, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_60, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	mono_runtime_invoke (method_60, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_61 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_RowSelected (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_61)
		method_61 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_61)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_61, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_61, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	mono_runtime_invoke (method_61, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_62 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_GetViewForHeader (id this, SEL sel, id p0, int p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_62)
		method_62 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_62)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_62, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	void* retval = (void *) mono_runtime_invoke (method_62, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_63 = NULL;
float
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_GetHeightForHeader (id this, SEL sel, id p0, int p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_63)
		method_63 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_63)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_63, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	void* retval = (void *) mono_runtime_invoke (method_63, mthis, arg_ptrs, NULL);
	float res;
	res = *(float *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_64 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_GetViewForFooter (id this, SEL sel, id p0, int p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_64)
		method_64 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_64)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_64, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	void* retval = (void *) mono_runtime_invoke (method_64, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_65 = NULL;
float
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_GetHeightForFooter (id this, SEL sel, id p0, int p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_65)
		method_65 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_65)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_65, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	void* retval = (void *) mono_runtime_invoke (method_65, mthis, arg_ptrs, NULL);
	float res;
	res = *(float *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_66 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_Scrolled (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_66)
		method_66 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_66)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_66, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_66, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_67 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_DraggingStarted (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_67)
		method_67 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_67)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_67, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_67, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_68 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_DraggingEnded (id this, SEL sel, id p0, bool p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_68)
		method_68 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_68)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_68, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	mono_runtime_invoke (method_68, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_69 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_CoconutCalendarViewController__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_69)
		method_69 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_69));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_69, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_70 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_CoconutCalendarViewController_DidReceiveMemoryWarning (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_70)
		method_70 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_70)));
		}
	mono_runtime_invoke (method_70, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_71 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_CoconutCalendarViewController_ViewDidLoad (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_71)
		method_71 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_71)));
		}
	mono_runtime_invoke (method_71, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_72 = NULL;
void *
native_to_managed_trampoline_escoz_CalendarMonthViewController__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_72)
		method_72 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_72));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_72, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_73 = NULL;
void *
native_to_managed_trampoline_escoz_CalendarMonthViewController_ViewDidLoad (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_73)
		method_73 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_73)));
		}
	mono_runtime_invoke (method_73, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_74 = NULL;
void *
native_to_managed_trampoline_escoz_CalendarDayView__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_74)
		method_74 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_74));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_74, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_75 = NULL;
void *
native_to_managed_trampoline_escoz_CalendarDayView_Draw (id this, SEL sel, CGRect p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_75)
		method_75 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_75)));
		}
	arg_ptrs [0] = &p0;
	mono_runtime_invoke (method_75, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_76 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__botView (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_76)
		method_76 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_76)));
		}
	void* retval = (void *) mono_runtime_invoke (method_76, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_77 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__botView (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_77)
		method_77 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_77)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_77, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_77, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_78 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__dataPicker (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_78)
		method_78 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_78)));
		}
	void* retval = (void *) mono_runtime_invoke (method_78, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_79 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__dataPicker (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_79)
		method_79 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_79)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_79, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_79, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_80 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__dateBtn (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_80)
		method_80 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_80)));
		}
	void* retval = (void *) mono_runtime_invoke (method_80, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_81 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__dateBtn (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_81)
		method_81 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_81)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_81, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_81, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_82 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__friBtn (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_82)
		method_82 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_82)));
		}
	void* retval = (void *) mono_runtime_invoke (method_82, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_83 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__friBtn (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_83)
		method_83 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_83)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_83, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_83, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_84 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__locationBtn (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_84)
		method_84 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_84)));
		}
	void* retval = (void *) mono_runtime_invoke (method_84, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_85 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__locationBtn (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_85)
		method_85 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_85)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_85, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_85, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_86 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__midVIew (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_86)
		method_86 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_86)));
		}
	void* retval = (void *) mono_runtime_invoke (method_86, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_87 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__midVIew (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_87)
		method_87 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_87)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_87, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_87, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_88 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__monBtn (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_88)
		method_88 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_88)));
		}
	void* retval = (void *) mono_runtime_invoke (method_88, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_89 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__monBtn (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_89)
		method_89 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_89)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_89, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_89, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_90 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__monthLabel (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_90)
		method_90 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_90)));
		}
	void* retval = (void *) mono_runtime_invoke (method_90, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_91 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__monthLabel (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_91)
		method_91 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_91)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_91, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_91, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_92 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__pickerView (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_92)
		method_92 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_92)));
		}
	void* retval = (void *) mono_runtime_invoke (method_92, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_93 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__pickerView (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_93)
		method_93 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_93)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_93, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_93, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_94 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__satBtn (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_94)
		method_94 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_94)));
		}
	void* retval = (void *) mono_runtime_invoke (method_94, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_95 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__satBtn (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_95)
		method_95 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_95)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_95, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_95, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_96 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__staffBtn (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_96)
		method_96 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_96)));
		}
	void* retval = (void *) mono_runtime_invoke (method_96, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_97 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__staffBtn (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_97)
		method_97 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_97)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_97, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_97, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_98 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__sunBtn (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_98)
		method_98 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_98)));
		}
	void* retval = (void *) mono_runtime_invoke (method_98, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_99 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__sunBtn (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_99)
		method_99 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_99)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_99, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_99, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_100 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__thuBtn (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_100)
		method_100 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_100)));
		}
	void* retval = (void *) mono_runtime_invoke (method_100, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_101 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__thuBtn (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_101)
		method_101 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_101)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_101, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_101, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_102 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__topView (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_102)
		method_102 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_102)));
		}
	void* retval = (void *) mono_runtime_invoke (method_102, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_103 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__topView (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_103)
		method_103 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_103)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_103, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_103, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_104 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__tueBtn (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_104)
		method_104 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_104)));
		}
	void* retval = (void *) mono_runtime_invoke (method_104, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_105 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__tueBtn (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_105)
		method_105 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_105)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_105, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_105, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_106 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__wedBtn (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_106)
		method_106 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_106)));
		}
	void* retval = (void *) mono_runtime_invoke (method_106, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_107 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__wedBtn (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_107)
		method_107 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_107)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_107, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_107, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_108 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_108)
		method_108 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_108));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_108, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_109 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_DidReceiveMemoryWarning (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_109)
		method_109 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_109)));
		}
	mono_runtime_invoke (method_109, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_110 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_ViewDidLoad (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_110)
		method_110 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_110)));
		}
	mono_runtime_invoke (method_110, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_111 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_viewSwipeLeft (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_111)
		method_111 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_111)));
		}
	mono_runtime_invoke (method_111, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_112 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_viewSwipeRight (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_112)
		method_112 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_112)));
		}
	mono_runtime_invoke (method_112, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_113 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Client__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_113)
		method_113 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_113));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_113, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_114 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Client_DidReceiveMemoryWarning (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_114)
		method_114 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_114)));
		}
	mono_runtime_invoke (method_114, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_115 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Client_ViewDidLoad (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_115)
		method_115 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_115)));
		}
	mono_runtime_invoke (method_115, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_116 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentSource_RowsInSection (id this, SEL sel, id p0, int p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_116)
		method_116 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_116)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_116, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	void* retval = (void *) mono_runtime_invoke (method_116, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_117 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentSource_NumberOfSections (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_117)
		method_117 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_117)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_117, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	void* retval = (void *) mono_runtime_invoke (method_117, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_118 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentSource_TitleForHeader (id this, SEL sel, id p0, int p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_118)
		method_118 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_118)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_118, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	void* retval = (void *) mono_runtime_invoke (method_118, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		char *str = mono_string_to_utf8 ((MonoString *) retval);
		NSString *nsstr = [[NSString alloc] initWithUTF8String:str];
		[nsstr autorelease];
		mono_free (str);
		res = nsstr;
	}
	return res;
}

static MonoMethod *method_119 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentSource_GetCell (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_119)
		method_119 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_119)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_119, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_119, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	void* retval = (void *) mono_runtime_invoke (method_119, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_120 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentSource_RowSelected (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_120)
		method_120 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_120)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_120, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_120, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	mono_runtime_invoke (method_120, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_121 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentSource_AccessoryButtonTapped (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_121)
		method_121 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_121)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_121, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_121, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	mono_runtime_invoke (method_121, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_122 = NULL;
float
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentSource_GetHeightForRow (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_122)
		method_122 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_122)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_122, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_122, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	void* retval = (void *) mono_runtime_invoke (method_122, mthis, arg_ptrs, NULL);
	float res;
	res = *(float *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_123 = NULL;
void *
native_to_managed_trampoline_CoconutCalendarAdmin_CoconutPickDateMonthViewController_get_monthView (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_123)
		method_123 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_123)));
		}
	void* retval = (void *) mono_runtime_invoke (method_123, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_124 = NULL;
void *
native_to_managed_trampoline_CoconutCalendarAdmin_CoconutPickDateMonthViewController_set_monthView (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_124)
		method_124 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_124)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_124, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_124, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_125 = NULL;
void *
native_to_managed_trampoline_CoconutCalendarAdmin_CoconutPickDateMonthViewController__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_125)
		method_125 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_125));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_125, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_126 = NULL;
void *
native_to_managed_trampoline_CoconutCalendarAdmin_CoconutPickDateMonthViewController_DidReceiveMemoryWarning (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_126)
		method_126 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_126)));
		}
	mono_runtime_invoke (method_126, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_127 = NULL;
void *
native_to_managed_trampoline_CoconutCalendarAdmin_CoconutPickDateMonthViewController_ViewDidLoad (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_127)
		method_127 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_127)));
		}
	mono_runtime_invoke (method_127, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_128 = NULL;
void *
native_to_managed_trampoline_escoz_CalendarMonthView__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_128)
		method_128 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_128));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_128, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_129 = NULL;
void *
native_to_managed_trampoline_escoz_CalendarMonthView_viewSwipeLeft (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_129)
		method_129 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_129)));
		}
	mono_runtime_invoke (method_129, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_130 = NULL;
void *
native_to_managed_trampoline_escoz_CalendarMonthView_viewSwipeRight (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_130)
		method_130 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_130)));
		}
	mono_runtime_invoke (method_130, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_131 = NULL;
void *
native_to_managed_trampoline_escoz_CalendarMonthView_SetNeedsDisplay (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_131)
		method_131 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_131)));
		}
	mono_runtime_invoke (method_131, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_132 = NULL;
void *
native_to_managed_trampoline_escoz_CalendarMonthView_LayoutSubviews (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_132)
		method_132 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_132)));
		}
	mono_runtime_invoke (method_132, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_133 = NULL;
void *
native_to_managed_trampoline_escoz_CalendarMonthView_Draw (id this, SEL sel, CGRect p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_133)
		method_133 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_133)));
		}
	arg_ptrs [0] = &p0;
	mono_runtime_invoke (method_133, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_134 = NULL;
void *
native_to_managed_trampoline_escoz_MonthGridView_TouchesBegan (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_134)
		method_134 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_134)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_134, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_134, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	mono_runtime_invoke (method_134, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_135 = NULL;
void *
native_to_managed_trampoline_escoz_MonthGridView_TouchesMoved (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_135)
		method_135 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_135)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_135, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_135, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	mono_runtime_invoke (method_135, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_136 = NULL;
void *
native_to_managed_trampoline_escoz_MonthGridView_TouchesEnded (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_136)
		method_136 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_136)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_136, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_136, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	mono_runtime_invoke (method_136, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_137 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_137)
		method_137 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_137));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_137, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_138 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ShouldBeginEditing (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_138)
		method_138 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_138)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_138, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	void* retval = (void *) mono_runtime_invoke (method_138, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_139 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ShouldEndEditing (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_139)
		method_139 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_139)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_139, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	void* retval = (void *) mono_runtime_invoke (method_139, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_140 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_EditingStarted (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_140)
		method_140 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_140)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_140, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_140, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_141 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_EditingEnded (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_141)
		method_141 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_141)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_141, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_141, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_142 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ShouldChangeText (id this, SEL sel, id p0, NSRange p1, NSString * p2)
{
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_142)
		method_142 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_142)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_142, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2 ? mono_string_new (mono_domain_get (), [p2 UTF8String]) : NULL;
	void* retval = (void *) mono_runtime_invoke (method_142, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_143 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_Changed (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_143)
		method_143 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_143)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_143, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_143, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_144 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_SelectionChanged (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_144)
		method_144 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_144)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_144, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_144, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_145 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ShouldInteractWithUrl (id this, SEL sel, id p0, id p1, NSRange p2)
{
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_145)
		method_145 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_145)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_145, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_145, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;
	void* retval = (void *) mono_runtime_invoke (method_145, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_146 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ShouldInteractWithTextAttachment (id this, SEL sel, id p0, id p1, NSRange p2)
{
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_146)
		method_146 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_146)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_146, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_146, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;
	void* retval = (void *) mono_runtime_invoke (method_146, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_147 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_Scrolled (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_147)
		method_147 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_147)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_147, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_147, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_148 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_DraggingStarted (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_148)
		method_148 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_148)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_148, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_148, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_149 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_DraggingEnded (id this, SEL sel, id p0, bool p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_149)
		method_149 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_149)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_149, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	mono_runtime_invoke (method_149, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_150 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_DecelerationStarted (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_150)
		method_150 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_150)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_150, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_150, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_151 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_DecelerationEnded (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_151)
		method_151 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_151)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_151, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_151, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_152 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ScrollAnimationEnded (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_152)
		method_152 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_152)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_152, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_152, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_153 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ViewForZoomingInScrollView (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_153)
		method_153 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_153)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_153, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	void* retval = (void *) mono_runtime_invoke (method_153, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_154 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ShouldScrollToTop (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_154)
		method_154 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_154)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_154, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	void* retval = (void *) mono_runtime_invoke (method_154, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_155 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ScrolledToTop (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_155)
		method_155 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_155)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_155, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_155, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_156 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ZoomingEnded (id this, SEL sel, id p0, id p1, float p2)
{
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_156)
		method_156 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_156)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_156, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_156, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;
	mono_runtime_invoke (method_156, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_157 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_DidZoom (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_157)
		method_157 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_157)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_157, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_157, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_158 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ZoomingStarted (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_158)
		method_158 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_158)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_158, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_158, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	mono_runtime_invoke (method_158, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_159 = NULL;
void *
native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_WillEndDragging (id this, SEL sel, id p0, CGPoint p1, CGPoint* p2)
{
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_159)
		method_159 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_159)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_159, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2;
	mono_runtime_invoke (method_159, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_160 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_get_labelService (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_160)
		method_160 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_160)));
		}
	void* retval = (void *) mono_runtime_invoke (method_160, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_161 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_set_labelService (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_161)
		method_161 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_161)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_161, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_161, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_162 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_get_labelStart (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_162)
		method_162 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_162)));
		}
	void* retval = (void *) mono_runtime_invoke (method_162, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_163 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_set_labelStart (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_163)
		method_163 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_163)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_163, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_163, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_164 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_get_serviceNameLabel (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_164)
		method_164 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_164)));
		}
	void* retval = (void *) mono_runtime_invoke (method_164, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_165 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_set_serviceNameLabel (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_165)
		method_165 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_165)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_165, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_165, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_166 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_get_startTimeLabel (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_166)
		method_166 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_166)));
		}
	void* retval = (void *) mono_runtime_invoke (method_166, mthis, arg_ptrs, NULL);
	void * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		mono_field_get_value (retval, monotouch_nsobject_handle_field, (void **) &retobj);
		[retobj retain];
		[retobj autorelease];
		res = retobj;
	}
	return res;
}

static MonoMethod *method_167 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_set_startTimeLabel (id this, SEL sel, id p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_167)
		method_167 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_167)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_167, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	mono_runtime_invoke (method_167, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_168 = NULL;
float
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_SizingSource_GetHeightForRow (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_168)
		method_168 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_168)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_168, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_168, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	void* retval = (void *) mono_runtime_invoke (method_168, mthis, arg_ptrs, NULL);
	float res;
	res = *(float *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_169 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_ShouldAutorotateToInterfaceOrientation (id this, SEL sel, int p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_169)
		method_169 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_169)));
		}
	arg_ptrs [0] = &p0;
	void* retval = (void *) mono_runtime_invoke (method_169, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_170 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_DidRotate (id this, SEL sel, int p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_170)
		method_170 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_170)));
		}
	arg_ptrs [0] = &p0;
	mono_runtime_invoke (method_170, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_171 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_LoadView (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_171)
		method_171 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_171)));
		}
	mono_runtime_invoke (method_171, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_172 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_ViewWillAppear (id this, SEL sel, bool p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_172)
		method_172 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_172)));
		}
	arg_ptrs [0] = &p0;
	mono_runtime_invoke (method_172, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_173 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_ViewWillDisappear (id this, SEL sel, bool p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_173)
		method_173 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_173)));
		}
	arg_ptrs [0] = &p0;
	mono_runtime_invoke (method_173, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_174 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_MessageElement_MessageCell__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_174)
		method_174 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_174));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_174, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_175 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_MessageElement_MessageCell_LayoutSubviews (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_175)
		method_175 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_175)));
		}
	mono_runtime_invoke (method_175, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_176 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_OwnerDrawnElement_OwnerDrawnCell_LayoutSubviews (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_176)
		method_176 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_176)));
		}
	mono_runtime_invoke (method_176, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_177 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_TapViewController__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_177)
		method_177 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_177));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_177, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_178 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_TapViewController_ViewDidLoad (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_178)
		method_178 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_178)));
		}
	mono_runtime_invoke (method_178, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_179 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_BaseBooleanImageElement_TextWithImageCellView_LayoutSubviews (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_179)
		method_179 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_179)));
		}
	mono_runtime_invoke (method_179, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_180 = NULL;
void *
native_to_managed_trampoline_CoconutCalendar_cc_LoginViewController__ctor (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (monotouch_try_get_nsobject (this))
		return this;
	if (!method_180)
		method_180 = get_method_for_selector ([this class], sel).method->method;
	int handle = (int) this;
	handle |= 1;
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (method_180));
	mono_field_set_value (mthis, monotouch_nsobject_handle_field, &handle);
	mono_runtime_invoke (method_180, mthis, arg_ptrs, NULL);
	monotouch_create_managed_ref (this, mthis, true);
	void *params[2];
	params[0] = mthis;
	params[1] = &this;
	mono_runtime_invoke (monotouch_register_nsobject, NULL, params, NULL);
	return this;
}

static MonoMethod *method_181 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_GlassButton_get_Enabled (id this, SEL sel)
{
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_181)
		method_181 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_181)));
		}
	void* retval = (void *) mono_runtime_invoke (method_181, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_182 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_GlassButton_set_Enabled (id this, SEL sel, bool p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_182)
		method_182 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_182)));
		}
	arg_ptrs [0] = &p0;
	mono_runtime_invoke (method_182, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_183 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_GlassButton_BeginTracking (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_183)
		method_183 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_183)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_183, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_183, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	void* retval = (void *) mono_runtime_invoke (method_183, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_184 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_GlassButton_EndTracking (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_184)
		method_184 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_184)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_184, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_184, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	mono_runtime_invoke (method_184, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_185 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_GlassButton_ContinueTracking (id this, SEL sel, id p0, id p1)
{
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_185)
		method_185 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_185)));
		}
	NSObject *nsobj0 = (NSObject *) p0;
		MonoObject *mobj0 = NULL;
		bool created0 = false;
		if (nsobj0) {
			mobj0 = get_nsobject_with_type_for_ptr_created (nsobj0, false, monotouch_get_parameter_type (method_185, 0), &created0);
		}
		arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
		MonoObject *mobj1 = NULL;
		bool created1 = false;
		if (nsobj1) {
			mobj1 = get_nsobject_with_type_for_ptr_created (nsobj1, false, monotouch_get_parameter_type (method_185, 1), &created1);
		}
		arg_ptrs [1] = mobj1;
	void* retval = (void *) mono_runtime_invoke (method_185, mthis, arg_ptrs, NULL);
	void * res;
	res = *(void * *) mono_object_unbox (retval);
	return res;
}

static MonoMethod *method_186 = NULL;
void *
native_to_managed_trampoline_MonoTouch_Dialog_GlassButton_Draw (id this, SEL sel, CGRect p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_186)
		method_186 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_186)));
		}
	arg_ptrs [0] = &p0;
	mono_runtime_invoke (method_186, mthis, arg_ptrs, NULL);
	return NULL;
}

static MonoMethod *method_187 = NULL;
void *
native_to_managed_trampoline_CoconutCalendarAdmin_CoconutClientViewController_ViewWillAppear (id this, SEL sel, bool p0)
{
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!method_187)
		method_187 = get_method_for_selector ([this class], sel).method->method;
		mthis = NULL;
		if (this) {
			mthis = get_nsobject_with_type_for_ptr (this, false, mono_class_get_type (mono_method_get_class (method_187)));
		}
	arg_ptrs [0] = &p0;
	mono_runtime_invoke (method_187, mthis, arg_ptrs, NULL);
	return NULL;
}



static MTClassMap __monotouch_class_map [] = {
	{"NSObject", "MonoTouch.Foundation.NSObject, monotouch", 0},
	{"__NSObject_Disposer", "MonoTouch.Foundation.NSObject+NSObject_Disposer, monotouch", 0},
	{"NSError", "MonoTouch.Foundation.NSError, monotouch", 0},
	{"NSAutoreleasePool", "MonoTouch.Foundation.NSAutoreleasePool, monotouch", 0},
	{"__MonoMac_NSAsyncActionDispatcher", "MonoTouch.Foundation.NSAsyncActionDispatcher, monotouch", 0},
	{"__MonoMac_NSActionDispatcher", "MonoTouch.Foundation.NSActionDispatcher, monotouch", 0},
	{"NSSet", "MonoTouch.Foundation.NSSet, monotouch", 0},
	{"NSURL", "MonoTouch.Foundation.NSUrl, monotouch", 0},
	{"NSString", "MonoTouch.Foundation.NSString, monotouch", 0},
	{"UIEvent", "MonoTouch.UIKit.UIEvent, monotouch", 0},
	{"NSRunLoop", "MonoTouch.Foundation.NSRunLoop, monotouch", 0},
	{"NSURLRequest", "MonoTouch.Foundation.NSUrlRequest, monotouch", 0},
	{"NSURLConnection", "MonoTouch.Foundation.NSUrlConnection, monotouch", 0},
	{"UIDevice", "MonoTouch.UIKit.UIDevice, monotouch", 0},
	{"UITouch", "MonoTouch.UIKit.UITouch, monotouch", 0},
	{"MonoTouch.UIKit.UIControlEventProxy", "MonoTouch.UIKit.UIControlEventProxy, monotouch", 0},
	{"UIColor", "MonoTouch.UIKit.UIColor, monotouch", 0},
	{"UINib", "MonoTouch.UIKit.UINib, monotouch", 0},
	{"UIBarItem", "MonoTouch.UIKit.UIBarItem, monotouch", 0},
	{"UIScreen", "MonoTouch.UIKit.UIScreen, monotouch", 0},
	{"UIResponder", "MonoTouch.UIKit.UIResponder, monotouch", 0},
	{"MonoTouch.UIKit.UIBarButtonItem+Callback", "MonoTouch.UIKit.UIBarButtonItem+Callback, monotouch", 0},
	{"NSIndexPath", "MonoTouch.Foundation.NSIndexPath, monotouch", 0},
	{"NSIndexSet", "MonoTouch.Foundation.NSIndexSet, monotouch", 0},
	{"UIImage", "MonoTouch.UIKit.UIImage, monotouch", 0},
	{"UIGestureRecognizer", "MonoTouch.UIKit.UIGestureRecognizer, monotouch", 0},
	{"UINavigationItem", "MonoTouch.UIKit.UINavigationItem, monotouch", 0},
	{"NSTextAttachment", "MonoTouch.UIKit.NSTextAttachment, monotouch", 0},
	{"MBProgressHUDDelegate", "MBProgressHUD.MBProgressHUDDelegate, MBProgressHUD", 0},
	{"NSURLResponse", "MonoTouch.Foundation.NSUrlResponse, monotouch", 0},
	{"NSArray", "MonoTouch.Foundation.NSArray, monotouch", 0},
	{"NSBundle", "MonoTouch.Foundation.NSBundle, monotouch", 0},
	{"NSCoder", "MonoTouch.Foundation.NSCoder, monotouch", 0},
	{"NSData", "MonoTouch.Foundation.NSData, monotouch", 0},
	{"NSDate", "MonoTouch.Foundation.NSDate, monotouch", 0},
	{"NSDictionary", "MonoTouch.Foundation.NSDictionary, monotouch", 0},
	{"CALayer", "MonoTouch.CoreAnimation.CALayer, monotouch", 0},
	{"NSException", "MonoTouch.Foundation.NSException, monotouch", 0},
	{"NSEnumerator", "MonoTouch.Foundation.NSEnumerator, monotouch", 0},
	{"NSFormatter", "MonoTouch.Foundation.NSFormatter, monotouch", 0},
	{"__UIGestureRecognizerToken", "MonoTouch.UIKit.UIGestureRecognizer+Token, monotouch", 0},
	{"UIFont", "MonoTouch.UIKit.UIFont, monotouch", 0},
	{"UISwipeGestureRecognizer", "MonoTouch.UIKit.UISwipeGestureRecognizer, monotouch", 0},
	{"UIViewController", "MonoTouch.UIKit.UIViewController, monotouch", 0},
	{"UIView", "MonoTouch.UIKit.UIView, monotouch", 0},
	{"MonoTouch.UIKit.UITextField+_UITextFieldDelegate", "MonoTouch.UIKit.UITextField+_UITextFieldDelegate, monotouch", 0},
	{"AppDelegate", "CoconutCalendar.AppDelegate, CoconutCalendar", 0},
	{"__UISwipeGestureRecognizer", "MonoTouch.UIKit.UISwipeGestureRecognizer+Callback, monotouch", 0},
	{"MBProgressHUD.MTMBProgressHUD+_MBProgressHUDDelegate", "MBProgressHUD.MTMBProgressHUD+_MBProgressHUDDelegate, MBProgressHUD", 0},
	{"NSDateFormatter", "MonoTouch.Foundation.NSDateFormatter, monotouch", 0},
	{"MonoTouch.UIKit.UIActionSheet+_UIActionSheetDelegate", "MonoTouch.UIKit.UIActionSheet+_UIActionSheetDelegate, monotouch", 0},
	{"UIApplication", "MonoTouch.UIKit.UIApplication, monotouch", 0},
	{"UIBarButtonItem", "MonoTouch.UIKit.UIBarButtonItem, monotouch", 0},
	{"UITapGestureRecognizer", "MonoTouch.UIKit.UITapGestureRecognizer, monotouch", 0},
	{"__UITapGestureRecognizer", "MonoTouch.UIKit.UITapGestureRecognizer+Callback, monotouch", 0},
	{"__UIGestureRecognizerParametrizedToken", "MonoTouch.UIKit.UIGestureRecognizer+ParametrizedDispatch, monotouch", 0},
	{"__UIGestureRecognizerParameterlessToken", "MonoTouch.UIKit.UIGestureRecognizer+ParameterlessDispatch, monotouch", 0},
	{"MonoTouch.UIKit.UIWebView+_UIWebViewDelegate", "MonoTouch.UIKit.UIWebView+_UIWebViewDelegate, monotouch", 0},
	{"CoconutCalendar.cc_Schedule_PickerModel", "CoconutCalendar.cc_Schedule_PickerModel, CoconutCalendar", 0},
	{"MonoTouch.Dialog.OwnerDrawnElement+OwnerDrawnCellView", "MonoTouch.Dialog.OwnerDrawnElement+OwnerDrawnCellView, MonoTouch.Dialog-1", 0},
	{"MonoTouch.Dialog.RefreshTableHeaderView", "MonoTouch.Dialog.RefreshTableHeaderView, MonoTouch.Dialog-1", 0},
	{"MBProgressHUD", "MBProgressHUD.MTMBProgressHUD, MBProgressHUD", 0},
	{"UIImageView", "MonoTouch.UIKit.UIImageView, monotouch", 0},
	{"MBRoundProgressView", "MBProgressHUD.MBRoundProgressView, MBProgressHUD", 0},
	{"MonoTouch.Dialog.MessageSummaryView", "MonoTouch.Dialog.MessageSummaryView, MonoTouch.Dialog-1", 0},
	{"UIWebView", "MonoTouch.UIKit.UIWebView, monotouch", 0},
	{"UITableViewController", "MonoTouch.UIKit.UITableViewController, monotouch", 0},
	{"UITabBarController", "MonoTouch.UIKit.UITabBarController, monotouch", 0},
	{"MonoTouch.Dialog.HtmlElement+WebViewController", "MonoTouch.Dialog.HtmlElement+WebViewController, MonoTouch.Dialog-1", 0},
	{"MonoTouch.Dialog.DateTimeElement+MyViewController", "MonoTouch.Dialog.DateTimeElement+MyViewController, MonoTouch.Dialog-1", 0},
	{"MonoTouch.Dialog.DialogViewController+SearchDelegate", "MonoTouch.Dialog.DialogViewController+SearchDelegate, MonoTouch.Dialog-1", 0},
	{"UIScrollView", "MonoTouch.UIKit.UIScrollView, monotouch", 0},
	{"MonoTouch.Dialog.DialogViewController+Source", "MonoTouch.Dialog.DialogViewController+Source, MonoTouch.Dialog-1", 0},
	{"UILabel", "MonoTouch.UIKit.UILabel, monotouch", 0},
	{"UIAlertView", "MonoTouch.UIKit.UIAlertView, monotouch", 0},
	{"UIActionSheet", "MonoTouch.UIKit.UIActionSheet, monotouch", 0},
	{"CoconutCalendarViewController", "CoconutCalendar.CoconutCalendarViewController, CoconutCalendar", 0},
	{"MBBarProgressView", "MBProgressHUD.MBBarProgressView, MBProgressHUD", 0},
	{"escoz.CalendarMonthViewController", "escoz.CalendarMonthViewController, CoconutCalendar", 0},
	{"escoz.CalendarDayView", "escoz.CalendarDayView, CoconutCalendar", 0},
	{"cc_Schedule", "CoconutCalendar.cc_Schedule, CoconutCalendar", 0},
	{"cc_Client", "CoconutCalendar.cc_Client, CoconutCalendar", 0},
	{"CoconutCalendar.cc_Schedule_AppointmentSource", "CoconutCalendar.cc_Schedule_AppointmentSource, CoconutCalendar", 0},
	{"CoconutPickDateMonthViewController", "CoconutCalendarAdmin.CoconutPickDateMonthViewController, CoconutCalendar", 0},
	{"escoz.CalendarMonthView", "escoz.CalendarMonthView, CoconutCalendar", 0},
	{"escoz.MonthGridView", "escoz.MonthGridView, CoconutCalendar", 0},
	{"UIControl", "MonoTouch.UIKit.UIControl, monotouch", 0},
	{"UIActivityIndicatorView", "MonoTouch.UIKit.UIActivityIndicatorView, monotouch", 0},
	{"MonoTouch.UIKit.UITextView+_UITextViewDelegate", "MonoTouch.UIKit.UITextView+_UITextViewDelegate, monotouch", 0},
	{"UITableViewCell", "MonoTouch.UIKit.UITableViewCell, monotouch", 0},
	{"UIWindow", "MonoTouch.UIKit.UIWindow, monotouch", 0},
	{"UISearchBar", "MonoTouch.UIKit.UISearchBar, monotouch", 0},
	{"UINavigationController", "MonoTouch.UIKit.UINavigationController, monotouch", 0},
	{"UIPickerView", "MonoTouch.UIKit.UIPickerView, monotouch", 0},
	{"cc_Schedule_AppointmentCell", "CoconutCalendar.cc_Schedule_AppointmentCell, CoconutCalendar", 0},
	{"MonoTouch.Dialog.DialogViewController+SizingSource", "MonoTouch.Dialog.DialogViewController+SizingSource, MonoTouch.Dialog-1", 0},
	{"MonoTouch.Dialog.DialogViewController", "MonoTouch.Dialog.DialogViewController, MonoTouch.Dialog-1", 0},
	{"UIDatePicker", "MonoTouch.UIKit.UIDatePicker, monotouch", 0},
	{"MonoTouch.Dialog.MessageElement+MessageCell", "MonoTouch.Dialog.MessageElement+MessageCell, MonoTouch.Dialog-1", 0},
	{"MonoTouch.Dialog.OwnerDrawnElement+OwnerDrawnCell", "MonoTouch.Dialog.OwnerDrawnElement+OwnerDrawnCell, MonoTouch.Dialog-1", 0},
	{"UISlider", "MonoTouch.UIKit.UISlider, monotouch", 0},
	{"CoconutCalendar.cc_TapViewController", "CoconutCalendar.cc_TapViewController, CoconutCalendar", 0},
	{"UISwitch", "MonoTouch.UIKit.UISwitch, monotouch", 0},
	{"UIButton", "MonoTouch.UIKit.UIButton, monotouch", 0},
	{"UITextField", "MonoTouch.UIKit.UITextField, monotouch", 0},
	{"MonoTouch.Dialog.BaseBooleanImageElement+TextWithImageCellView", "MonoTouch.Dialog.BaseBooleanImageElement+TextWithImageCellView, MonoTouch.Dialog-1", 0},
	{"UITextView", "MonoTouch.UIKit.UITextView, monotouch", 0},
	{"UITableView", "MonoTouch.UIKit.UITableView, monotouch", 0},
	{"CoconutCalendar.cc_LoginViewController", "CoconutCalendar.cc_LoginViewController, CoconutCalendar", 0},
	{"MonoTouch.Dialog.GlassButton", "MonoTouch.Dialog.GlassButton, MonoTouch.Dialog-1", 0},
	{"CoconutCalendar.cc_Schedule_AddMenue", "CoconutCalendar.cc_Schedule_AddMenue, CoconutCalendar", 0},
	{"CoconutCalendar.cc_Schedule_AddNew", "CoconutCalendar.cc_Schedule_AddNew, CoconutCalendar", 0},
	{"CoconutCalendarAdmin.CoconutClientAddViewController", "CoconutCalendarAdmin.CoconutClientAddViewController, CoconutCalendar", 0},
	{"CoconutCalendarAdmin.CoconutClientViewController", "CoconutCalendarAdmin.CoconutClientViewController, CoconutCalendar", 0},
	{"CoconutCalendar.cc_Schedule_Personal", "CoconutCalendar.cc_Schedule_Personal, CoconutCalendar", 0},
};

static MTClass __monotouch_classes [] = {
	{"__NSObject_Disposer", "NSObject", 1, 2, 0},
	{"__MonoMac_NSAsyncActionDispatcher", "NSObject", 1, 1, 0},
	{"__MonoMac_NSActionDispatcher", "NSObject", 1, 1, 0},
	{"MonoTouch.UIKit.UIControlEventProxy", "NSObject", 1, 1, 0},
	{"UIPickerViewModel", "NSObject", 1, 1, 0},
	{"MonoTouch.UIKit.UIBarButtonItem+Callback", "NSObject", 1, 2, 0},
	{"__UIGestureRecognizerToken", "NSObject", 1, 1, 0},
	{"MonoTouch.UIKit.UITextField+_UITextFieldDelegate", "NSObject", 1, 8, 0},
	{"UITableViewSource", "NSObject", 1, 1, 0},
	{"AppDelegate", "NSObject", 1, 2, 0},
	{"__UISwipeGestureRecognizer", "__UIGestureRecognizerToken", 1, 0, 0},
	{"MBProgressHUD.MTMBProgressHUD+_MBProgressHUDDelegate", "NSObject", 1, 2, 0},
	{"MonoTouch.UIKit.UIActionSheet+_UIActionSheetDelegate", "NSObject", 1, 6, 0},
	{"__UITapGestureRecognizer", "__UIGestureRecognizerToken", 1, 0, 0},
	{"__UIGestureRecognizerParametrizedToken", "__UIGestureRecognizerToken", 1, 0, 0},
	{"__UIGestureRecognizerParameterlessToken", "__UIGestureRecognizerToken", 1, 1, 0},
	{"MonoTouch.UIKit.UIWebView+_UIWebViewDelegate", "NSObject", 1, 5, 0},
	{"CoconutCalendar.cc_Schedule_PickerModel", "NSObject", 1, 4, 0},
	{"MonoTouch.Dialog.OwnerDrawnElement+OwnerDrawnCellView", "UIView", 1, 1, 0},
	{"MonoTouch.Dialog.RefreshTableHeaderView", "UIView", 1, 2, 0},
	{"MonoTouch.Dialog.MessageSummaryView", "UIView", 1, 2, 0},
	{"MonoTouch.Dialog.HtmlElement+WebViewController", "UIViewController", 1, 1, 0},
	{"MonoTouch.Dialog.DateTimeElement+MyViewController", "UIViewController", 1, 3, 0},
	{"MonoTouch.Dialog.DialogViewController+SearchDelegate", "NSObject", 1, 5, 0},
	{"MonoTouch.Dialog.DialogViewController+Source", "NSObject", 1, 16, 0},
	{"CoconutCalendarViewController", "UIViewController", 1, 3, 0},
	{"escoz.CalendarMonthViewController", "UIViewController", 1, 2, 0},
	{"escoz.CalendarDayView", "UIView", 1, 2, 0},
	{"cc_Schedule", "UIViewController", 1, 37, 0},
	{"cc_Client", "UIViewController", 1, 3, 0},
	{"CoconutCalendar.cc_Schedule_AppointmentSource", "NSObject", 1, 7, 0},
	{"CoconutPickDateMonthViewController", "UIViewController", 1, 5, 0},
	{"escoz.CalendarMonthView", "UIView", 1, 6, 0},
	{"escoz.MonthGridView", "UIView", 1, 3, 0},
	{"MonoTouch.UIKit.UITextView+_UITextViewDelegate", "NSObject", 1, 23, 0},
	{"cc_Schedule_AppointmentCell", "UITableViewCell", 1, 8, 0},
	{"MonoTouch.Dialog.DialogViewController+SizingSource", "MonoTouch.Dialog.DialogViewController+Source", 1, 1, 0},
	{"MonoTouch.Dialog.DialogViewController", "UITableViewController", 1, 5, 0},
	{"MonoTouch.Dialog.MessageElement+MessageCell", "UITableViewCell", 1, 2, 0},
	{"MonoTouch.Dialog.OwnerDrawnElement+OwnerDrawnCell", "UITableViewCell", 1, 1, 0},
	{"CoconutCalendar.cc_TapViewController", "UITabBarController", 1, 2, 0},
	{"MonoTouch.Dialog.BaseBooleanImageElement+TextWithImageCellView", "UITableViewCell", 1, 1, 0},
	{"CoconutCalendar.cc_LoginViewController", "MonoTouch.Dialog.DialogViewController", 1, 1, 0},
	{"MonoTouch.Dialog.GlassButton", "UIButton", 1, 6, 0},
	{"CoconutCalendar.cc_Schedule_AddMenue", "MonoTouch.Dialog.DialogViewController", 1, 0, 0},
	{"CoconutCalendar.cc_Schedule_AddNew", "MonoTouch.Dialog.DialogViewController", 1, 0, 0},
	{"CoconutCalendarAdmin.CoconutClientAddViewController", "MonoTouch.Dialog.DialogViewController", 1, 0, 0},
	{"CoconutCalendarAdmin.CoconutClientViewController", "MonoTouch.Dialog.DialogViewController", 1, 1, 0},
	{"CoconutCalendar.cc_Schedule_Personal", "MonoTouch.Dialog.DialogViewController", 1, 0, 0},
};

static MTIvar __monotouch_ivars [] = {
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
	{"__monoObjectGCHandle", "i", 4, 4},
};

static MTMethod __monotouch_methods [] = {
	{"init","@@:",0, &native_to_managed_trampoline_MonoTouch_Foundation_NSObject_NSObject_Disposer__ctor},
	{"drain:","v@:@",1, &native_to_managed_trampoline_MonoTouch_Foundation_NSObject_NSObject_Disposer_Drain},
	{"xamarinApplySelector","v@:",0, &native_to_managed_trampoline_MonoTouch_Foundation_NSAsyncActionDispatcher_Apply},
	{"xamarinApplySelector","v@:",0, &native_to_managed_trampoline_MonoTouch_Foundation_NSActionDispatcher_Apply},
	{"BridgeSelector","v@:",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIControlEventProxy_Activated},
	{"init","@@:",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIPickerViewModel__ctor},
	{"init","@@:",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIBarButtonItem_Callback__ctor},
	{"InvokeAction:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIBarButtonItem_Callback_Call},
	{"init","@@:",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIGestureRecognizer_Token__ctor},
	{"init","@@:",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate__ctor},
	{"textFieldShouldBeginEditing:","B@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate_ShouldBeginEditing},
	{"textFieldDidBeginEditing:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate_EditingStarted},
	{"textFieldShouldEndEditing:","B@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate_ShouldEndEditing},
	{"textFieldDidEndEditing:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate_EditingEnded},
	{"textFieldShouldClear:","B@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate_ShouldClear},
	{"textFieldShouldReturn:","B@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate_ShouldReturn},
	{"textField:shouldChangeCharactersInRange:replacementString:","B@:@{NSRange=ii}@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextField__UITextFieldDelegate_ShouldChangeCharacters},
	{"init","@@:",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITableViewSource__ctor},
	{"init","@@:",0, &native_to_managed_trampoline_CoconutCalendar_AppDelegate__ctor},
	{"application:didFinishLaunchingWithOptions:","B@:@@",0, &native_to_managed_trampoline_CoconutCalendar_AppDelegate_FinishedLaunching},
	{"init","@@:",0, &native_to_managed_trampoline_MBProgressHUD_MTMBProgressHUD__MBProgressHUDDelegate__ctor},
	{"hudWasHidden:","v@:@",0, &native_to_managed_trampoline_MBProgressHUD_MTMBProgressHUD__MBProgressHUDDelegate_HudWasHidden},
	{"actionSheet:clickedButtonAtIndex:","v@:@i",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate_Clicked},
	{"actionSheetCancel:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate_Canceled},
	{"willPresentActionSheet:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate_WillPresent},
	{"didPresentActionSheet:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate_Presented},
	{"actionSheet:willDismissWithButtonIndex:","v@:@i",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate_WillDismiss},
	{"actionSheet:didDismissWithButtonIndex:","v@:@i",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIActionSheet__UIActionSheetDelegate_Dismissed},
	{"target","v@:",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIGestureRecognizer_ParameterlessDispatch_Activated},
	{"init","@@:",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIWebView__UIWebViewDelegate__ctor},
	{"webView:shouldStartLoadWithRequest:navigationType:","B@:@@i",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIWebView__UIWebViewDelegate_ShouldStartLoad},
	{"webViewDidStartLoad:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIWebView__UIWebViewDelegate_LoadStarted},
	{"webViewDidFinishLoad:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIWebView__UIWebViewDelegate_LoadingFinished},
	{"webView:didFailLoadWithError:","v@:@@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UIWebView__UIWebViewDelegate_LoadFailed},
	{"pickerView:numberOfRowsInComponent:","i@:@i",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_PickerModel_GetRowsInComponent},
	{"numberOfComponentsInPickerView:","i@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_PickerModel_GetComponentCount},
	{"pickerView:titleForRow:forComponent:","@@:@ii",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_PickerModel_GetTitle},
	{"pickerView:didSelectRow:inComponent:","v@:@ii",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_PickerModel_Selected},
	{"drawRect:","v@:{RectangleF=ffff}",0, &native_to_managed_trampoline_MonoTouch_Dialog_OwnerDrawnElement_OwnerDrawnCellView_Draw},
	{"layoutSubviews","v@:",0, &native_to_managed_trampoline_MonoTouch_Dialog_RefreshTableHeaderView_LayoutSubviews},
	{"drawRect:","v@:{RectangleF=ffff}",0, &native_to_managed_trampoline_MonoTouch_Dialog_RefreshTableHeaderView_Draw},
	{"init","@@:",0, &native_to_managed_trampoline_MonoTouch_Dialog_MessageSummaryView__ctor},
	{"drawRect:","v@:{RectangleF=ffff}",0, &native_to_managed_trampoline_MonoTouch_Dialog_MessageSummaryView_Draw},
	{"shouldAutorotateToInterfaceOrientation:","B@:i",0, &native_to_managed_trampoline_MonoTouch_Dialog_HtmlElement_WebViewController_ShouldAutorotateToInterfaceOrientation},
	{"viewWillDisappear:","v@:B",0, &native_to_managed_trampoline_MonoTouch_Dialog_DateTimeElement_MyViewController_ViewWillDisappear},
	{"didRotateFromInterfaceOrientation:","v@:i",0, &native_to_managed_trampoline_MonoTouch_Dialog_DateTimeElement_MyViewController_DidRotate},
	{"shouldAutorotateToInterfaceOrientation:","B@:i",0, &native_to_managed_trampoline_MonoTouch_Dialog_DateTimeElement_MyViewController_ShouldAutorotateToInterfaceOrientation},
	{"searchBarTextDidBeginEditing:","v@:@",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_SearchDelegate_OnEditingStarted},
	{"searchBarTextDidEndEditing:","v@:@",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_SearchDelegate_OnEditingStopped},
	{"searchBar:textDidChange:","v@:@@",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_SearchDelegate_TextChanged},
	{"searchBarCancelButtonClicked:","v@:@",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_SearchDelegate_CancelButtonClicked},
	{"searchBarSearchButtonClicked:","v@:@",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_SearchDelegate_SearchButtonClicked},
	{"tableView:accessoryButtonTappedForRowWithIndexPath:","v@:@@",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_AccessoryButtonTapped},
	{"tableView:numberOfRowsInSection:","i@:@i",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_RowsInSection},
	{"numberOfSectionsInTableView:","i@:@",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_NumberOfSections},
	{"tableView:titleForHeaderInSection:","@@:@i",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_TitleForHeader},
	{"tableView:titleForFooterInSection:","@@:@i",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_TitleForFooter},
	{"tableView:cellForRowAtIndexPath:","@@:@@",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_GetCell},
	{"tableView:willDisplayCell:forRowAtIndexPath:","v@:@@@",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_WillDisplay},
	{"tableView:didDeselectRowAtIndexPath:","v@:@@",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_RowDeselected},
	{"tableView:didSelectRowAtIndexPath:","v@:@@",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_RowSelected},
	{"tableView:viewForHeaderInSection:","@@:@i",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_GetViewForHeader},
	{"tableView:heightForHeaderInSection:","f@:@i",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_GetHeightForHeader},
	{"tableView:viewForFooterInSection:","@@:@i",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_GetViewForFooter},
	{"tableView:heightForFooterInSection:","f@:@i",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_GetHeightForFooter},
	{"scrollViewDidScroll:","v@:@",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_Scrolled},
	{"scrollViewWillBeginDragging:","v@:@",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_DraggingStarted},
	{"scrollViewDidEndDragging:willDecelerate:","v@:@B",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_Source_DraggingEnded},
	{"init","@@:",0, &native_to_managed_trampoline_CoconutCalendar_CoconutCalendarViewController__ctor},
	{"didReceiveMemoryWarning","v@:",0, &native_to_managed_trampoline_CoconutCalendar_CoconutCalendarViewController_DidReceiveMemoryWarning},
	{"viewDidLoad","v@:",0, &native_to_managed_trampoline_CoconutCalendar_CoconutCalendarViewController_ViewDidLoad},
	{"init","@@:",0, &native_to_managed_trampoline_escoz_CalendarMonthViewController__ctor},
	{"viewDidLoad","v@:",0, &native_to_managed_trampoline_escoz_CalendarMonthViewController_ViewDidLoad},
	{"init","@@:",0, &native_to_managed_trampoline_escoz_CalendarDayView__ctor},
	{"drawRect:","v@:{RectangleF=ffff}",0, &native_to_managed_trampoline_escoz_CalendarDayView_Draw},
	{"_botView","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__botView},
	{"set_botView:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__botView},
	{"_dataPicker","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__dataPicker},
	{"set_dataPicker:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__dataPicker},
	{"_dateBtn","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__dateBtn},
	{"set_dateBtn:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__dateBtn},
	{"_friBtn","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__friBtn},
	{"set_friBtn:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__friBtn},
	{"_locationBtn","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__locationBtn},
	{"set_locationBtn:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__locationBtn},
	{"_midVIew","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__midVIew},
	{"set_midVIew:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__midVIew},
	{"_monBtn","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__monBtn},
	{"set_monBtn:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__monBtn},
	{"_monthLabel","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__monthLabel},
	{"set_monthLabel:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__monthLabel},
	{"_pickerView","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__pickerView},
	{"set_pickerView:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__pickerView},
	{"_satBtn","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__satBtn},
	{"set_satBtn:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__satBtn},
	{"_staffBtn","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__staffBtn},
	{"set_staffBtn:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__staffBtn},
	{"_sunBtn","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__sunBtn},
	{"set_sunBtn:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__sunBtn},
	{"_thuBtn","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__thuBtn},
	{"set_thuBtn:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__thuBtn},
	{"_topView","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__topView},
	{"set_topView:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__topView},
	{"_tueBtn","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__tueBtn},
	{"set_tueBtn:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__tueBtn},
	{"_wedBtn","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_get__wedBtn},
	{"set_wedBtn:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_set__wedBtn},
	{"init","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule__ctor},
	{"didReceiveMemoryWarning","v@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_DidReceiveMemoryWarning},
	{"viewDidLoad","v@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_ViewDidLoad},
	{"SwipeLeft","v@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_viewSwipeLeft},
	{"SwipeRight","v@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_viewSwipeRight},
	{"init","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Client__ctor},
	{"didReceiveMemoryWarning","v@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Client_DidReceiveMemoryWarning},
	{"viewDidLoad","v@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Client_ViewDidLoad},
	{"tableView:numberOfRowsInSection:","i@:@i",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentSource_RowsInSection},
	{"numberOfSectionsInTableView:","i@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentSource_NumberOfSections},
	{"tableView:titleForHeaderInSection:","@@:@i",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentSource_TitleForHeader},
	{"tableView:cellForRowAtIndexPath:","@@:@@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentSource_GetCell},
	{"tableView:didSelectRowAtIndexPath:","v@:@@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentSource_RowSelected},
	{"tableView:accessoryButtonTappedForRowWithIndexPath:","v@:@@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentSource_AccessoryButtonTapped},
	{"tableView:heightForRowAtIndexPath:","f@:@@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentSource_GetHeightForRow},
	{"monthView","@@:",0, &native_to_managed_trampoline_CoconutCalendarAdmin_CoconutPickDateMonthViewController_get_monthView},
	{"setMonthView:","v@:@",0, &native_to_managed_trampoline_CoconutCalendarAdmin_CoconutPickDateMonthViewController_set_monthView},
	{"init","@@:",0, &native_to_managed_trampoline_CoconutCalendarAdmin_CoconutPickDateMonthViewController__ctor},
	{"didReceiveMemoryWarning","v@:",0, &native_to_managed_trampoline_CoconutCalendarAdmin_CoconutPickDateMonthViewController_DidReceiveMemoryWarning},
	{"viewDidLoad","v@:",0, &native_to_managed_trampoline_CoconutCalendarAdmin_CoconutPickDateMonthViewController_ViewDidLoad},
	{"init","@@:",0, &native_to_managed_trampoline_escoz_CalendarMonthView__ctor},
	{"SwipeUp","v@:",0, &native_to_managed_trampoline_escoz_CalendarMonthView_viewSwipeLeft},
	{"SwipeDown","v@:",0, &native_to_managed_trampoline_escoz_CalendarMonthView_viewSwipeRight},
	{"setNeedsDisplay","v@:",0, &native_to_managed_trampoline_escoz_CalendarMonthView_SetNeedsDisplay},
	{"layoutSubviews","v@:",0, &native_to_managed_trampoline_escoz_CalendarMonthView_LayoutSubviews},
	{"drawRect:","v@:{RectangleF=ffff}",0, &native_to_managed_trampoline_escoz_CalendarMonthView_Draw},
	{"touchesBegan:withEvent:","v@:@@",0, &native_to_managed_trampoline_escoz_MonthGridView_TouchesBegan},
	{"touchesMoved:withEvent:","v@:@@",0, &native_to_managed_trampoline_escoz_MonthGridView_TouchesMoved},
	{"touchesEnded:withEvent:","v@:@@",0, &native_to_managed_trampoline_escoz_MonthGridView_TouchesEnded},
	{"init","@@:",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate__ctor},
	{"textViewShouldBeginEditing:","B@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ShouldBeginEditing},
	{"textViewShouldEndEditing:","B@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ShouldEndEditing},
	{"textViewDidBeginEditing:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_EditingStarted},
	{"textViewDidEndEditing:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_EditingEnded},
	{"textView:shouldChangeTextInRange:replacementText:","B@:@{NSRange=ii}@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ShouldChangeText},
	{"textViewDidChange:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_Changed},
	{"textViewDidChangeSelection:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_SelectionChanged},
	{"textView:shouldInteractWithURL:inRange:","B@:@@{NSRange=ii}",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ShouldInteractWithUrl},
	{"textView:shouldInteractWithTextAttachment:inRange:","B@:@@{NSRange=ii}",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ShouldInteractWithTextAttachment},
	{"scrollViewDidScroll:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_Scrolled},
	{"scrollViewWillBeginDragging:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_DraggingStarted},
	{"scrollViewDidEndDragging:willDecelerate:","v@:@B",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_DraggingEnded},
	{"scrollViewWillBeginDecelerating:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_DecelerationStarted},
	{"scrollViewDidEndDecelerating:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_DecelerationEnded},
	{"scrollViewDidEndScrollingAnimation:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ScrollAnimationEnded},
	{"viewForZoomingInScrollView:","@@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ViewForZoomingInScrollView},
	{"scrollViewShouldScrollToTop:","B@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ShouldScrollToTop},
	{"scrollViewDidScrollToTop:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ScrolledToTop},
	{"scrollViewDidEndZooming:withView:atScale:","v@:@@f",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ZoomingEnded},
	{"scrollViewDidZoom:","v@:@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_DidZoom},
	{"scrollViewWillBeginZooming:withView:","v@:@@",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_ZoomingStarted},
	{"scrollViewWillEndDragging:withVelocity:targetContentOffset:","v@:@{PointF=ff}^{PointF=ff}",0, &native_to_managed_trampoline_MonoTouch_UIKit_UITextView__UITextViewDelegate_WillEndDragging},
	{"labelService","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_get_labelService},
	{"setLabelService:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_set_labelService},
	{"labelStart","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_get_labelStart},
	{"setLabelStart:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_set_labelStart},
	{"serviceNameLabel","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_get_serviceNameLabel},
	{"setServiceNameLabel:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_set_serviceNameLabel},
	{"startTimeLabel","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_get_startTimeLabel},
	{"setStartTimeLabel:","v@:@",0, &native_to_managed_trampoline_CoconutCalendar_cc_Schedule_AppointmentCell_set_startTimeLabel},
	{"tableView:heightForRowAtIndexPath:","f@:@@",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_SizingSource_GetHeightForRow},
	{"shouldAutorotateToInterfaceOrientation:","B@:i",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_ShouldAutorotateToInterfaceOrientation},
	{"didRotateFromInterfaceOrientation:","v@:i",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_DidRotate},
	{"loadView","v@:",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_LoadView},
	{"viewWillAppear:","v@:B",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_ViewWillAppear},
	{"viewWillDisappear:","v@:B",0, &native_to_managed_trampoline_MonoTouch_Dialog_DialogViewController_ViewWillDisappear},
	{"init","@@:",0, &native_to_managed_trampoline_MonoTouch_Dialog_MessageElement_MessageCell__ctor},
	{"layoutSubviews","v@:",0, &native_to_managed_trampoline_MonoTouch_Dialog_MessageElement_MessageCell_LayoutSubviews},
	{"layoutSubviews","v@:",0, &native_to_managed_trampoline_MonoTouch_Dialog_OwnerDrawnElement_OwnerDrawnCell_LayoutSubviews},
	{"init","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_TapViewController__ctor},
	{"viewDidLoad","v@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_TapViewController_ViewDidLoad},
	{"layoutSubviews","v@:",0, &native_to_managed_trampoline_MonoTouch_Dialog_BaseBooleanImageElement_TextWithImageCellView_LayoutSubviews},
	{"init","@@:",0, &native_to_managed_trampoline_CoconutCalendar_cc_LoginViewController__ctor},
	{"isEnabled","B@:",0, &native_to_managed_trampoline_MonoTouch_Dialog_GlassButton_get_Enabled},
	{"setEnabled:","v@:B",0, &native_to_managed_trampoline_MonoTouch_Dialog_GlassButton_set_Enabled},
	{"beginTrackingWithTouch:withEvent:","B@:@@",0, &native_to_managed_trampoline_MonoTouch_Dialog_GlassButton_BeginTracking},
	{"endTrackingWithTouch:withEvent:","v@:@@",0, &native_to_managed_trampoline_MonoTouch_Dialog_GlassButton_EndTracking},
	{"continueTrackingWithTouch:withEvent:","B@:@@",0, &native_to_managed_trampoline_MonoTouch_Dialog_GlassButton_ContinueTracking},
	{"drawRect:","v@:{RectangleF=ffff}",0, &native_to_managed_trampoline_MonoTouch_Dialog_GlassButton_Draw},
	{"viewWillAppear:","v@:B",0, &native_to_managed_trampoline_CoconutCalendarAdmin_CoconutClientViewController_ViewWillAppear},
};

static MTProperty __monotouch_properties [] = {
};

int __monotouch_map_count = 115;
static int __monotouch_class_count = 49;

void monotouch_create_classes (void) {
	int i,j;
	int ivar_offset = 0;
	int method_offset = 0;
	int prop_offset = 0;

	for (i = 0; i < __monotouch_class_count; i++) {
		Class handle = objc_allocateClassPair (objc_getClass (__monotouch_classes [i].supername), __monotouch_classes [i].name, 0);
		if (handle == NULL) {
			ivar_offset += __monotouch_classes [i].ivar_count;
			method_offset += __monotouch_classes [i].method_count;
			prop_offset += __monotouch_classes [i].prop_count;
			continue;
		}
		for (j = 0; j < __monotouch_classes [i].ivar_count; j++, ivar_offset++)
			class_addIvar (handle, __monotouch_ivars [ivar_offset].name, __monotouch_ivars [ivar_offset].size, __monotouch_ivars [ivar_offset].align, __monotouch_ivars [ivar_offset].type);
		class_addMethod (handle, sel_registerName ("release"), (IMP) &monotouch_release_trampoline, "v@:");
		class_addMethod (handle, sel_registerName ("retain"), (IMP) &monotouch_retain_trampoline, "@@:");
		class_addMethod (handle, sel_registerName ("conformsToProtocol:"), (IMP) &monotouch_trampoline, "B@:^v");
		for (j = 0; j < __monotouch_classes [i].method_count; j++, method_offset++) {
			Class h = (__monotouch_methods [method_offset].isstatic ? object_getClass (handle) : handle);
			class_addMethod (h, sel_registerName (__monotouch_methods [method_offset].selector), __monotouch_methods [method_offset].trampoline, __monotouch_methods [method_offset].signature);
		}
		for (j = 0; j < __monotouch_classes [i].prop_count; j++, prop_offset++) {
			int count = 0;
			objc_property_attribute_t props[3];
			props [count].name = "T";
			props [count++].value = __monotouch_properties [prop_offset].type;
			if (*__monotouch_properties [prop_offset].argument_semantic != 0) {
				props [count].name = __monotouch_properties [prop_offset].argument_semantic;
				props [count++].value = "";
			}
			props [count].name = "V";
			props [count++].value = __monotouch_properties [prop_offset].name;
			class_addProperty (handle, __monotouch_properties [prop_offset].name, props, count);;
		}
		objc_registerClassPair (handle);
	}
	for (i = 0; i < __monotouch_map_count; i++) {
		__monotouch_class_map [i].handle = objc_getClass (__monotouch_class_map [i].name);
	}
	monotouch_setup_classmap (__monotouch_class_map, __monotouch_map_count);
}
