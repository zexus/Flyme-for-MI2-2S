.class Lcom/android/settings_ext/sim/SimSettings$SimPreference;
.super Landroid/preference/Preference;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ext/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimPreference"
.end annotation


# instance fields
.field private mSlotId:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field final synthetic this$0:Lcom/android/settings_ext/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subInfoRecord"    # Landroid/telephony/SubscriptionInfo;
    .param p4, "slotId"    # I

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ext/sim/SimSettings;

    .line 554
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 556
    iput-object p3, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 557
    iput p4, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->mSlotId:I

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->setKey(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->update()V

    .line 560
    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ext/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/sim/SimSettings$SimPreference;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method


# virtual methods
.method public createEditDialog(Lcom/android/settings_ext/sim/SimSettings$SimPreference;)V
    .locals 12
    .param p1, "simPref"    # Lcom/android/settings_ext/sim/SimSettings$SimPreference;

    .prologue
    .line 578
    iget-object v8, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ext/sim/SimSettings;

    invoke-virtual {v8}, Lcom/android/settings_ext/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 580
    .local v5, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ext/sim/SimSettings;

    invoke-virtual {v8}, Lcom/android/settings_ext/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 582
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ext/sim/SimSettings;

    invoke-virtual {v8}, Lcom/android/settings_ext/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040065

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 584
    .local v2, "dialogLayout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 586
    const v8, 0x7f0f00f0

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 587
    .local v3, "nameText":Landroid/widget/EditText;
    iget-object v8, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 589
    const v8, 0x7f0f00f2

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 590
    .local v4, "numberView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v8, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ext/sim/SimSettings;

    invoke-virtual {v8}, Lcom/android/settings_ext/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 595
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    iget-object v8, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v6

    .line 597
    .local v6, "simCarrierName":Ljava/lang/String;
    const v8, 0x7f0f00f1

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 598
    .local v1, "carrierView":Landroid/widget/TextView;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .end local v6    # "simCarrierName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    const v8, 0x7f090920

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->mSlotId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 604
    const v8, 0x7f090100

    new-instance v9, Lcom/android/settings_ext/sim/SimSettings$SimPreference$1;

    invoke-direct {v9, p0, v2}, Lcom/android/settings_ext/sim/SimSettings$SimPreference$1;-><init>(Lcom/android/settings_ext/sim/SimSettings$SimPreference;Landroid/view/View;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 623
    const v8, 0x7f0900fd

    new-instance v9, Lcom/android/settings_ext/sim/SimSettings$SimPreference$2;

    invoke-direct {v9, p0}, Lcom/android/settings_ext/sim/SimSettings$SimPreference$2;-><init>(Lcom/android/settings_ext/sim/SimSettings$SimPreference;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 630
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 631
    return-void

    .line 598
    .restart local v6    # "simCarrierName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x104000e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 563
    iget-object v1, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings_ext/sim/SimSettings;

    invoke-virtual {v1}, Lcom/android/settings_ext/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 565
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f09091c

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->mSlotId:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v1, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    .line 567
    const v1, 0x7f090912

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 569
    invoke-virtual {p0, v5}, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->setEnabled(Z)V

    .line 575
    :goto_0
    return-void

    .line 571
    :cond_0
    const v1, 0x7f09091d

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->setSummary(I)V

    .line 572
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->setFragment(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0, v4}, Lcom/android/settings_ext/sim/SimSettings$SimPreference;->setEnabled(Z)V

    goto :goto_0
.end method
