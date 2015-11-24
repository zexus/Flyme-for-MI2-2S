.class Lcom/android/settings_ext/fI;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic vV:Lcom/android/settings_ext/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/android/settings_ext/fI;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/settings_ext/fI;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->n(Lcom/android/settings_ext/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ext/fI;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->n(Lcom/android/settings_ext/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 1097
    iget-object v0, p0, Lcom/android/settings_ext/fI;->vV:Lcom/android/settings_ext/RadioInfo;

    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->J(Lcom/android/settings_ext/RadioInfo;)V

    .line 1098
    return-void

    .line 1096
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
