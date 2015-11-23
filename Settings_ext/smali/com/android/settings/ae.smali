.class Lcom/android/settings_ext/ae;
.super Landroid/database/ContentObserver;
.source "CarrierCustomEditFragment.java"


# instance fields
.field final synthetic cs:I

.field final synthetic ct:Lcom/android/settings_ext/CarrierCustomEditFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/CarrierCustomEditFragment;Landroid/os/Handler;I)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings_ext/ae;->ct:Lcom/android/settings_ext/CarrierCustomEditFragment;

    iput p3, p0, Lcom/android/settings_ext/ae;->cs:I

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ext/ae;->ct:Lcom/android/settings_ext/CarrierCustomEditFragment;

    iget-object v0, v0, Lcom/android/settings_ext/CarrierCustomEditFragment;->co:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settings_ext/ae;->cs:I

    iget-object v2, p0, Lcom/android/settings_ext/ae;->ct:Lcom/android/settings_ext/CarrierCustomEditFragment;

    invoke-virtual {v2}, Lcom/android/settings_ext/CarrierCustomEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status_bar_real_carrier"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ext/ae;->cs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 101
    iget-object v0, p0, Lcom/android/settings_ext/ae;->ct:Lcom/android/settings_ext/CarrierCustomEditFragment;

    invoke-static {v0}, Lcom/android/settings_ext/CarrierCustomEditFragment;->a(Lcom/android/settings_ext/CarrierCustomEditFragment;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/ae;->cs:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ext/ae;->ct:Lcom/android/settings_ext/CarrierCustomEditFragment;

    iget-object v1, v1, Lcom/android/settings_ext/CarrierCustomEditFragment;->co:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ext/ae;->cs:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method
