.class Lcom/android/settings/wifi/as;
.super Landroid/database/DataSetObserver;
.source "WifiSettingsForSetupWizard.java"


# instance fields
.field final synthetic awf:Lcom/android/settings/wifi/aq;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/aq;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/wifi/as;->awf:Lcom/android/settings/wifi/aq;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/as;->awf:Lcom/android/settings/wifi/aq;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aq;->vr()V

    .line 110
    return-void
.end method
