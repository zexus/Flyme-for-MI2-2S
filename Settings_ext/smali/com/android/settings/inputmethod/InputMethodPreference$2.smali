.class Lcom/android/settings_ext/inputmethod/InputMethodPreference$2;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic abz:Lcom/android/settings_ext/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/inputmethod/InputMethodPreference;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/settings_ext/inputmethod/InputMethodPreference$2;->abz:Lcom/android/settings_ext/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodPreference$2;->abz:Lcom/android/settings_ext/inputmethod/InputMethodPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodPreference$2;->abz:Lcom/android/settings_ext/inputmethod/InputMethodPreference;

    invoke-static {v0}, Lcom/android/settings_ext/inputmethod/InputMethodPreference;->b(Lcom/android/settings_ext/inputmethod/InputMethodPreference;)Lcom/android/settings_ext/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/InputMethodPreference$2;->abz:Lcom/android/settings_ext/inputmethod/InputMethodPreference;

    invoke-interface {v0, v1}, Lcom/android/settings_ext/inputmethod/InputMethodPreference$OnSavePreferenceListener;->a(Lcom/android/settings_ext/inputmethod/InputMethodPreference;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodPreference$2;->abz:Lcom/android/settings_ext/inputmethod/InputMethodPreference;

    invoke-static {v0}, Lcom/android/settings_ext/inputmethod/InputMethodPreference;->d(Lcom/android/settings_ext/inputmethod/InputMethodPreference;)V

    .line 243
    return-void
.end method
