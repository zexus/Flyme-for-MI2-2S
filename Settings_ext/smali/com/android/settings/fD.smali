.class Lcom/android/settings_ext/fD;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic vV:Lcom/android/settings_ext/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/android/settings_ext/fD;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 975
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/fD;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ext/RadioInfo;->A(Lcom/android/settings_ext/RadioInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManager;->getDataStateForSlot(I)I

    move-result v0

    .line 976
    packed-switch v0, :pswitch_data_0

    .line 987
    :goto_0
    :pswitch_0
    return v2

    .line 978
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/fD;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->n(Lcom/android/settings_ext/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    goto :goto_0

    .line 981
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/fD;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->n(Lcom/android/settings_ext/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    goto :goto_0

    .line 976
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
