.class Lcom/miui/compass/CompassActivity$12;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Lcom/miui/compass/CompassDataManager$CompassDataObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/CompassActivity;


# direct methods
.method constructor <init>(Lcom/miui/compass/CompassActivity;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyCompassDataChanged(Lcom/miui/compass/CompassDataManager$CompassData;)V
    .locals 9
    .param p1, "compassData"    # Lcom/miui/compass/CompassDataManager$CompassData;

    .prologue
    const v4, 0x7f080001

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 619
    invoke-virtual {p1}, Lcom/miui/compass/CompassDataManager$CompassData;->getPressure()F

    move-result v2

    const/high16 v3, -0x3c360000    # -404.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 620
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCompassScreen:Lcom/miui/compass/CompassScreen;
    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$600(Lcom/miui/compass/CompassActivity;)Lcom/miui/compass/CompassScreen;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/compass/CompassDataManager$CompassData;->getPressure()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/compass/CompassScreen;->setPressure(F)V

    .line 621
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    const v4, 0x7f08000c

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/compass/CompassDataManager$CompassData;->getPressure()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/miui/compass/CompassActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    const v4, 0x7f08000e

    invoke-virtual {v3, v4}, Lcom/miui/compass/CompassActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 623
    .local v1, "pressureString":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mPressureTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$1700(Lcom/miui/compass/CompassActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-virtual {p1}, Lcom/miui/compass/CompassDataManager$CompassData;->getAltitudeAccuracy()Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    move-result-object v3

    # invokes: Lcom/miui/compass/CompassActivity;->updateAltitude(Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;)V
    invoke-static {v2, v3}, Lcom/miui/compass/CompassActivity;->access$1800(Lcom/miui/compass/CompassActivity;Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;)V

    .line 626
    new-instance v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    const v4, 0x7f08000d

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/compass/CompassDataManager$CompassData;->getAltitude()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/miui/compass/CompassActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    const v4, 0x7f08000f

    invoke-virtual {v3, v4}, Lcom/miui/compass/CompassActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 628
    .local v0, "altitudeString":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCompassScreen:Lcom/miui/compass/CompassScreen;
    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$600(Lcom/miui/compass/CompassActivity;)Lcom/miui/compass/CompassScreen;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/compass/CompassDataManager$CompassData;->getAltitude()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/compass/CompassScreen;->setAltitude(F)V

    .line 629
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mAltitudeTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$1900(Lcom/miui/compass/CompassActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    .end local v0    # "altitudeString":Ljava/lang/String;
    .end local v1    # "pressureString":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-virtual {p1}, Lcom/miui/compass/CompassDataManager$CompassData;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/miui/compass/CompassDataManager$CompassData;->getLatitude()D

    move-result-wide v6

    # invokes: Lcom/miui/compass/CompassActivity;->updateLocation(DD)V
    invoke-static {v2, v4, v5, v6, v7}, Lcom/miui/compass/CompassActivity;->access$2100(Lcom/miui/compass/CompassActivity;DD)V

    .line 637
    return-void

    .line 631
    :cond_0
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mAltitudeTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$1900(Lcom/miui/compass/CompassActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 632
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mPressureTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$1700(Lcom/miui/compass/CompassActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 633
    iget-object v2, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mLytAltitude:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$2000(Lcom/miui/compass/CompassActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCalibrateComplete(IZ)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "notifyUser"    # Z

    .prologue
    .line 641
    iget-object v1, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    # getter for: Lcom/miui/compass/CompassActivity;->mCalibratAltitudeDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/miui/compass/CompassActivity;->access$2200(Lcom/miui/compass/CompassActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/compass/Utils;->dismissDialog(Landroid/app/AlertDialog;)V

    .line 642
    if-eqz p2, :cond_0

    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "toastResId":I
    packed-switch p1, :pswitch_data_0

    .line 657
    const v0, 0x7f080006

    .line 660
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 661
    iget-object v1, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 664
    .end local v0    # "toastResId":I
    :cond_0
    return-void

    .line 646
    .restart local v0    # "toastResId":I
    :pswitch_1
    const v0, 0x7f080007

    .line 647
    goto :goto_0

    .line 649
    :pswitch_2
    const v0, 0x7f080008

    .line 650
    goto :goto_0

    .line 654
    :pswitch_3
    const v0, 0x7f080009

    .line 655
    goto :goto_0

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCalibrateStart(Z)V
    .locals 1
    .param p1, "notifyUser"    # Z

    .prologue
    .line 668
    if-eqz p1, :cond_0

    .line 669
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$12;->this$0:Lcom/miui/compass/CompassActivity;

    # invokes: Lcom/miui/compass/CompassActivity;->showCalibratAltitudeDialog()V
    invoke-static {v0}, Lcom/miui/compass/CompassActivity;->access$2300(Lcom/miui/compass/CompassActivity;)V

    .line 671
    :cond_0
    return-void
.end method
