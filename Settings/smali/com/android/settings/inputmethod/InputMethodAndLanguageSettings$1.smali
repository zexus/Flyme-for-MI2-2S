.class Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$1;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;->updateUserDictionaryPreference(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic val$localeSet:Ljava/util/TreeSet;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;Ljava/util/TreeSet;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;

    iput-object p2, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$1;->val$localeSet:Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    const/4 v3, -0x1

    .line 214
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 216
    .local v5, "extras":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$1;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-gt v0, v7, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$1;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const-string v1, "locale"

    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$1;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    const-class v6, Lcom/android/settings_ext/UserDictionarySettings;

    .line 232
    .local v6, "targetFragment":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;

    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 234
    return v7

    .line 230
    .end local v6    # "targetFragment":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    :cond_1
    const-class v6, Lcom/android/settings_ext/inputmethod/UserDictionaryList;

    .restart local v6    # "targetFragment":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    goto :goto_0
.end method
