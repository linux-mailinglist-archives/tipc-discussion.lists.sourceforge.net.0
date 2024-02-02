Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D66D847A45
	for <lists+tipc-discussion@lfdr.de>; Fri,  2 Feb 2024 21:11:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1rVzsc-0001SK-KH;
	Fri, 02 Feb 2024 20:11:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1rVzsb-0001SD-0m
 for tipc-discussion@lists.sourceforge.net;
 Fri, 02 Feb 2024 20:11:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A01EutfqCXvSkXVj18gRDXk4Kr8NN6OnFlcPAZicJZA=; b=abnxS3Exrq03ugNQ8xWKE3XqgG
 794dX8gKFJyf9kuGm1N+yDgr+9nESbO5PfWflVnlOUxxK2WMVPK1vCJyU3X6WAMoqvFNBt3EHYpTp
 djLbafSEYSBhEi+uYyU/W/l1Nh9h3BuJEcX2UqCSASxt6rZcRqxrP8NjSQH8DM2RjuBw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=A01EutfqCXvSkXVj18gRDXk4Kr8NN6OnFlcPAZicJZA=; b=X
 dJ4Z9GHZv3Apnp0YthjB5VmsVW7pMsdoFLtha7ZKpHEBfSdVxtNUU4G7Bx3t1w0KQN4ghXqE1TsfP
 k/lkD+pLTflkMDGtZID7/OyJ47hqlC9jjbVhGXHGBnbXeWzjzUflLB8vYxxXsSm8PLZyn8E2dUo6J
 dR5hrdP6XjY7ozIM=;
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rVzsa-00029t-BS for tipc-discussion@lists.sourceforge.net;
 Fri, 02 Feb 2024 20:11:17 +0000
Received: by mail-oi1-f177.google.com with SMTP id
 5614622812f47-3be3daeff38so1364500b6e.2
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 02 Feb 2024 12:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706904671; x=1707509471; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=A01EutfqCXvSkXVj18gRDXk4Kr8NN6OnFlcPAZicJZA=;
 b=eKZ+ivDMyQolAncGOj81ughvALeWYnZYbYCBm00/s7Amzfsx4CGmLRzjrFlWxGSvhF
 bG9zZjtK7h/vPh+OLN+PO0YDpOWLeyrJIo0GIUlvcvR0ynzvTLUENXHVthFHOBsIdzBP
 lBdqSSGKgQouUu6duooTGs31LuP0ereVicsWZ80qoh2rHHUGQkxFAiShP49BJiTe14Cq
 KB/t5t+K4W7J2OYCrDwUyqIu0qhxwe04m5aO2S7TlWrnnTl1S50JC/BQ3xn1B6MoOSib
 uQzIuA3vGFlAc/h9D2aVQ25qe1mSmKL9KWftXWsdhm9bOs6fl2uFhm0kHQnMQ4FZaQUJ
 QhCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706904671; x=1707509471;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=A01EutfqCXvSkXVj18gRDXk4Kr8NN6OnFlcPAZicJZA=;
 b=X565AY+WQ3PRW5b6+1PlaK4GJ1TSc7iiFTMz8x/LQIE36H8VoX0OjP5c71WUN3VvHy
 eglbfOugrQyFlRHx7HVPv6TEyi8Nbkf1mNytFHRw0EvoohPKNkOFXmq4kk3BNTzTgbCz
 kWXIgmNWY5LpiL6VJ5tpS0qRal4qSq0vb2eEcrD3yjjc5OrCcZdDbaPSRQjNloknMiuu
 kDS1XnMVQ3h1UoJPedqUyGiNGJRMpgBsYT8IxcW6rH/JQicRSvhIrGUJxBORGcAL59OE
 wQhl1Zx7VyNegzksPi4laYcnlCKcwy00Dz+JFMMZqtBnBGajHcOEZxlgBVA/UnIoHCu1
 uEEQ==
X-Gm-Message-State: AOJu0Yy8Bjiu7jQ5YSeCGS+WMRpvQtahByzoASPszrd/t6EZgohr+bUg
 ySXxjZ3WiSXLNFE6KZ+Wnw24qHRwLSF0SXikEVw+66j/eYkEXhdFyrYCf7GBaYU=
X-Google-Smtp-Source: AGHT+IG1+On8i7zoEGPCckotY+tAt6RkBjsq98Nv9GxqxDeiCjqp9QIIfS8SLR7+AhYQuAlI2tPdkw==
X-Received: by 2002:a05:6808:1823:b0:3bf:c393:ed50 with SMTP id
 bh35-20020a056808182300b003bfc393ed50mr2216377oib.56.1706904671132; 
 Fri, 02 Feb 2024 12:11:11 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCXHzf5Q7iF+hiQG7Uy/aEb2AK9X77gyPiHTLt9XUpvs9L6T+2VI762h2eHHjSt2U+IOI9cekQJtmeN20vlVrX8YVTndsJz4NzHkEYZkvuPvHH95i3h0nx2P8cVUBmVhludMCp4fCf2BDDtjwQSAxIbDLORJTAXVeRPGEiCB67E7a5JY9GtlFfY+R7JXE5uiENFMHjxDOKuMZd3VB6Oe/zgIvg==
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 i4-20020ae9ee04000000b00783f77b968fsm934780qkg.109.2024.02.02.12.11.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Feb 2024 12:11:10 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Fri,  2 Feb 2024 15:11:09 -0500
Message-Id: <d909edeef072da1810bd5869fdbbfe84411efdb2.1706904669.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It is not appropriate for TIPC to use "diag" as its diag
 module
 name while the other protocols are using "$(protoname)_diag" like tcp_diag,
 udp_diag and sctp_diag etc. So this patch is to rename diag.ko to tipc_diag.ko
 in tipc's Makefile. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.177 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.177 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rVzsa-00029t-BS
Subject: [tipc-discussion] [PATCH net-next] tipc: rename the module name
 diag to tipc_diag
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: kuba@kernel.org, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

It is not appropriate for TIPC to use "diag" as its diag module name
while the other protocols are using "$(protoname)_diag" like tcp_diag,
udp_diag and sctp_diag etc.

So this patch is to rename diag.ko to tipc_diag.ko in tipc's Makefile.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/tipc/Makefile b/net/tipc/Makefile
index ee49a9f1dd4f..18e1636aa036 100644
--- a/net/tipc/Makefile
+++ b/net/tipc/Makefile
@@ -18,5 +18,5 @@ tipc-$(CONFIG_TIPC_MEDIA_IB)	+= ib_media.o
 tipc-$(CONFIG_SYSCTL)		+= sysctl.o
 tipc-$(CONFIG_TIPC_CRYPTO)	+= crypto.o
 
-
-obj-$(CONFIG_TIPC_DIAG)	+= diag.o
+obj-$(CONFIG_TIPC_DIAG)	+= tipc_diag.o
+tipc_diag-y	+= diag.o
-- 
2.39.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
