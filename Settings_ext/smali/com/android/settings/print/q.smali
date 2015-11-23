.class Lcom/android/settings/print/q;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# instance fields
.field final synthetic ahu:Lcom/android/settings/print/p;


# direct methods
.method constructor <init>(Lcom/android/settings/print/p;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/settings/print/q;->ahu:Lcom/android/settings/print/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/settings/print/q;->ahu:Lcom/android/settings/print/p;

    invoke-static {v0}, Lcom/android/settings/print/p;->a(Lcom/android/settings/print/p;)V

    .line 490
    return-void
.end method
