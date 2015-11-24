.class Lcom/android/settings_ext/cs;
.super Ljava/lang/Object;
.source "FieldTestInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic lx:Lcom/android/settings_ext/FieldTestInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/FieldTestInfo;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    const/16 v5, 0x4d0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 401
    if-nez p3, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {}, Lcom/android/settings_ext/eK;->fB()Lcom/android/settings_ext/eK;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings_ext/eK;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/FieldTestInfo;->a(Lcom/android/settings_ext/FieldTestInfo;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 403
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->c(Lcom/android/settings_ext/FieldTestInfo;)Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v1}, Lcom/android/settings_ext/FieldTestInfo;->a(Lcom/android/settings_ext/FieldTestInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v2}, Lcom/android/settings_ext/FieldTestInfo;->b(Lcom/android/settings_ext/FieldTestInfo;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/telephony/TelephonyManager;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 404
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/FieldTestInfo;->a(Lcom/android/settings_ext/FieldTestInfo;Lmiui/telephony/TelephonyManager;)Lmiui/telephony/TelephonyManager;

    .line 405
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0, v3}, Lcom/android/settings_ext/FieldTestInfo;->a(Lcom/android/settings_ext/FieldTestInfo;I)I

    .line 406
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v2}, Lcom/android/settings_ext/FieldTestInfo;->a(Lcom/android/settings_ext/FieldTestInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/FieldTestInfo;->a(Lcom/android/settings_ext/FieldTestInfo;Lmiui/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;

    .line 407
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->c(Lcom/android/settings_ext/FieldTestInfo;)Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v1}, Lcom/android/settings_ext/FieldTestInfo;->a(Lcom/android/settings_ext/FieldTestInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v2}, Lcom/android/settings_ext/FieldTestInfo;->b(Lcom/android/settings_ext/FieldTestInfo;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lmiui/telephony/TelephonyManager;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 423
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->d(Lcom/android/settings_ext/FieldTestInfo;)V

    .line 424
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->e(Lcom/android/settings_ext/FieldTestInfo;)V

    .line 425
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->f(Lcom/android/settings_ext/FieldTestInfo;)V

    .line 426
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->g(Lcom/android/settings_ext/FieldTestInfo;)V

    .line 427
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->h(Lcom/android/settings_ext/FieldTestInfo;)V

    .line 428
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->i(Lcom/android/settings_ext/FieldTestInfo;)V

    .line 429
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->j(Lcom/android/settings_ext/FieldTestInfo;)V

    .line 430
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->k(Lcom/android/settings_ext/FieldTestInfo;)V

    .line 431
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->l(Lcom/android/settings_ext/FieldTestInfo;)V

    .line 432
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->m(Lcom/android/settings_ext/FieldTestInfo;)V

    .line 433
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->n(Lcom/android/settings_ext/FieldTestInfo;)V

    .line 434
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->o(Lcom/android/settings_ext/FieldTestInfo;)V

    .line 435
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {}, Lcom/android/settings_ext/eK;->fB()Lcom/android/settings_ext/eK;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings_ext/eK;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/FieldTestInfo;->a(Lcom/android/settings_ext/FieldTestInfo;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 413
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->c(Lcom/android/settings_ext/FieldTestInfo;)Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v1}, Lcom/android/settings_ext/FieldTestInfo;->a(Lcom/android/settings_ext/FieldTestInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v2}, Lcom/android/settings_ext/FieldTestInfo;->b(Lcom/android/settings_ext/FieldTestInfo;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/telephony/TelephonyManager;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 414
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/FieldTestInfo;->a(Lcom/android/settings_ext/FieldTestInfo;Lmiui/telephony/TelephonyManager;)Lmiui/telephony/TelephonyManager;

    .line 415
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0, v4}, Lcom/android/settings_ext/FieldTestInfo;->a(Lcom/android/settings_ext/FieldTestInfo;I)I

    .line 416
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v2}, Lcom/android/settings_ext/FieldTestInfo;->a(Lcom/android/settings_ext/FieldTestInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/FieldTestInfo;->a(Lcom/android/settings_ext/FieldTestInfo;Lmiui/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;

    .line 417
    iget-object v0, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v0}, Lcom/android/settings_ext/FieldTestInfo;->c(Lcom/android/settings_ext/FieldTestInfo;)Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v1}, Lcom/android/settings_ext/FieldTestInfo;->a(Lcom/android/settings_ext/FieldTestInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ext/cs;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-static {v2}, Lcom/android/settings_ext/FieldTestInfo;->b(Lcom/android/settings_ext/FieldTestInfo;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lmiui/telephony/TelephonyManager;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 438
    return-void
.end method
