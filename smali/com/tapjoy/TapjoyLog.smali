.class public Lcom/tapjoy/TapjoyLog;
.super Ljava/lang/Object;
.source "TapjoyLog.java"


# static fields
.field private static final MAX_STRING_SIZE:I = 0x1000

.field private static showLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method

.method public static enableLogging(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    .line 23
    const-string v0, "TapjoyLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLogging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sput-boolean p0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    .line 25
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-boolean v3, Lcom/tapjoy/TapjoyLog;->showLog:Z

    if-eqz v3, :cond_2

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1000

    if-le v3, v4, :cond_1

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit16 v3, v3, 0x1000

    if-gt v1, v3, :cond_2

    .line 41
    mul-int/lit16 v2, v1, 0x1000

    .line 42
    .local v2, "start":I
    add-int/lit8 v3, v1, 0x1

    mul-int/lit16 v0, v3, 0x1000

    .line 43
    .local v0, "end":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 44
    :cond_0
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "start":I
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_2
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    return-void
.end method
