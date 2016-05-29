.class Lcom/android/settings_ext/DreamSettings$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ext/DreamSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DreamSettings;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings_ext/DreamSettings$1;->this$0:Lcom/android/settings_ext/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ext/DreamSettings$1;->this$0:Lcom/android/settings_ext/DreamSettings;

    # getter for: Lcom/android/settings_ext/DreamSettings;->mBackend:Lcom/android/settings_ext/DreamBackend;
    invoke-static {v0}, Lcom/android/settings_ext/DreamSettings;->access$100(Lcom/android/settings_ext/DreamSettings;)Lcom/android/settings_ext/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/DreamBackend;->startDreaming()V

    .line 146
    return-void
.end method
