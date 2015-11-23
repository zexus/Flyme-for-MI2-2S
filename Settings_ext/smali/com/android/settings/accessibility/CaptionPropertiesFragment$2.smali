.class Lcom/android/settings_ext/accessibility/CaptionPropertiesFragment$2;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic AW:Lcom/android/settings_ext/accessibility/CaptionPropertiesFragment;

.field final synthetic AX:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/accessibility/CaptionPropertiesFragment;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings_ext/accessibility/CaptionPropertiesFragment$2;->AW:Lcom/android/settings_ext/accessibility/CaptionPropertiesFragment;

    iput-object p2, p0, Lcom/android/settings_ext/accessibility/CaptionPropertiesFragment$2;->AX:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 262
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/CaptionPropertiesFragment$2;->AX:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 263
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/CaptionPropertiesFragment$2;->AW:Lcom/android/settings_ext/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_captioning_enabled"

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    iget-object v0, p0, Lcom/android/settings_ext/accessibility/CaptionPropertiesFragment$2;->AW:Lcom/android/settings_ext/accessibility/CaptionPropertiesFragment;

    invoke-static {v0, v2}, Lcom/android/settings_ext/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings_ext/accessibility/CaptionPropertiesFragment;Z)V

    .line 266
    return v1

    .line 263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
