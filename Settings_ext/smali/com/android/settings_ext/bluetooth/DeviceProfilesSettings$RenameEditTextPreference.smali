.class Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic Od:Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->Od:Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$1;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->Od:Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;->a(Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 75
    instance-of v1, v0, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 76
    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 78
    :cond_0
    return-void

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
