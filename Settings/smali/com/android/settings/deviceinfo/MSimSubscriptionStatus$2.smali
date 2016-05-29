.class Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "MSimSubscriptionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;

    # setter for: Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;->mDataState:I
    invoke-static {v0, p1}, Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;->access$202(Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;I)I

    .line 297
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;->updateDataState()V
    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;->access$300(Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;)V

    .line 298
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;->access$400(Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;)V

    .line 299
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    .line 292
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V
    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;->access$100(Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;)V

    .line 293
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 287
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/MSimSubscriptionStatus;->updateSignalStrength()V

    .line 288
    return-void
.end method
