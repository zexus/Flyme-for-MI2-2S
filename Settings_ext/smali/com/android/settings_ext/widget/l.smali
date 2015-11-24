.class Lcom/android/settings_ext/widget/l;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aqZ:Lcom/android/settings_ext/widget/ScreenView;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/widget/ScreenView;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/settings_ext/widget/l;->aqZ:Lcom/android/settings_ext/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings_ext/widget/l;->aqZ:Lcom/android/settings_ext/widget/ScreenView;

    invoke-static {v0}, Lcom/android/settings_ext/widget/ScreenView;->a(Lcom/android/settings_ext/widget/ScreenView;)V

    .line 236
    return-void
.end method
