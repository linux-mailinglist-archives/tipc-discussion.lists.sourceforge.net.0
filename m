Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0963F3BDD0B
	for <lists+tipc-discussion@lfdr.de>; Tue,  6 Jul 2021 20:22:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m0piN-0001r0-EL; Tue, 06 Jul 2021 18:22:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1m0piK-0001qp-Tc
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bkePuzjUbBSkZupnCwKIVJmtfopRTcFNGj1Ath/omnQ=; b=Rjkz73x8kjWRwWuluYqWnCCjYS
 Uzzhr3cCLDj30Cy+qz/Z3jfqH/R1v/HElHDOUUbKmgp5ZvK9mGdRRHgWDo0P3TUduhOfK3Sdw/u1I
 OKGi5x5upxVlzt4exMNYlMjhSTUejkb59EMYSm4/OGNbVjqK/l1vtZSvdk7kqHsX+/Mk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bkePuzjUbBSkZupnCwKIVJmtfopRTcFNGj1Ath/omnQ=; b=eDssTR4TYqrqrgRXuTq3yZOSVj
 trNh0CKvtlwKzpTQI/Wznc5Mri7vGdmtP5hDWclTSiBu/QYE+BnNgYtfbNK3xZ4LTDKmml1bMAweF
 y8EcPcXMriXNF41wKrbGJmGOf+QysVGjOmLIPxHBPPgHuWiNNVv/8A5zrPYeU0V0fO6A=;
Received: from mail-wm1-f54.google.com ([209.85.128.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m0piE-00Cbo3-Fe
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:32 +0000
Received: by mail-wm1-f54.google.com with SMTP id j34so137106wms.5
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 06 Jul 2021 11:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=bkePuzjUbBSkZupnCwKIVJmtfopRTcFNGj1Ath/omnQ=;
 b=AuT/pyokpn7j756GVEpIIjx6fpcroaZW+b8fOr9c1jDJcBWpxk3Ttr3UPKKstlPxrj
 NVICHoejomQULc1X10GKoOnzAjkUoxNQQAGW868f04yD0502R1wVb4lodFUw3z3l5oKb
 Frz7n0CaKetKa8/AEgubPhDCGB2WB9pljM8ePWLpN3DTf4vgaUn1eAnBN6Y2Nt87HQzN
 GfaQFKrok0Ynil8r+gX6TDq88SREBBpgI1dwjS1tvWEaHtTEMm9Y/MR1ru3t7cM+q+SE
 D9wJPPSg9ryqp+rCKYBrnHY/aCSRsYE4vwBEmbR9wTN2Hh9Eynbb+vlfBbJv+y8ShJPz
 mCgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bkePuzjUbBSkZupnCwKIVJmtfopRTcFNGj1Ath/omnQ=;
 b=GzcPfv8xpce0VJGY0PNxYhgBx4os8AcGFbkGd7IbP31WfroZWlveM9gSUsImxuOiKI
 3XmdGitxf+OrW6zUKdDEbj38s/PWtUq7xqYumN+11HhLb1uXhwCYtsW8bKiLntE1Vo78
 rX1c8BcSzfdpvCKM7riQM5f3Yh3X6cHxa8w16ZjPB82S0Qb55tSBiO6LJp86pg6AOjs2
 v/H/n505wDn7pWqP7Nqxs1a1JepeB1q2u8dGKSFD2uRn1Qqku9aeLTXnbhfAl0xkZwhP
 VMn0aFRzPZeMoSw66oeOT9IyJOI3Ps6Sa0K06ebn31P10lYImoapFi50r+jRGo3Mth6q
 uefw==
X-Gm-Message-State: AOAM53232dVlthnHw+NYrugBkYSFRQylj9KaGp4cn8jhej0SycLYGBCB
 nXVg+pkJ5rymL+2/9Wx+tRt5i0W/rJmymw==
X-Google-Smtp-Source: ABdhPJwj9l+3YOdhfYKRTz9zVt1qY/b+7MYgJR0kU78fRp0ckidv15LOaoMKCQDHEmaBTqGqeXKN6w==
X-Received: by 2002:a05:600c:3399:: with SMTP id
 o25mr21926024wmp.3.1625595740186; 
 Tue, 06 Jul 2021 11:22:20 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id l15sm12132089wrv.11.2021.07.06.11.22.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 11:22:19 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: Jon Maloy <jmaloy@redhat.com>,
	tipc-discussion@lists.sourceforge.net
Date: Tue,  6 Jul 2021 14:22:08 -0400
Message-Id: <592fce113e84552e00c76a9c0a6684eb44fe3f08.1625595705.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1625595705.git.lucien.xin@gmail.com>
References: <cover.1625595705.git.lucien.xin@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.54 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m0piE-00Cbo3-Fe
Subject: [tipc-discussion] [PATCH net-next 2/8] tipc: add the constants and
 variables for plpmtud
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

These are 4 constants described in rfc8899#section-5.1.2:

  MAX_PROBES, MIN_PLPMTU, MAX_PLPMTU, BASE_PLPMTU;

And 2 variables described in rfc8899#section-5.1.3:

  PROBED_SIZE, PROBE_COUNT;

And 5 states described in rfc8899#section-5.2:

  DISABLED, BASE, SEARCH, SEARCH_COMPLETE, ERROR;

'count' and 'raise' are used for two timers' counting:
PROBE_TIMER and PMTU_RAISE_TIMER. 'probe_high' is used
for finding the optimal value for pmtu.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/link.c | 13 +++++++++++++
 net/tipc/link.h | 20 ++++++++++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index cf586840caeb..1aa775cef3bb 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -182,6 +182,14 @@ struct tipc_link {
 	/* Max packet negotiation */
 	u16 mtu;
 	u16 advertised_mtu;
+	struct {
+		u16 probe_size;
+		u16 probe_high;
+		u16 pmtu;
+		u8 count;
+		u8 state:3;
+		u8 raise:5;
+	} pl;
 
 	/* Sending */
 	struct sk_buff_head transmq;
@@ -984,6 +992,11 @@ void tipc_link_reset(struct tipc_link *l)
 	l->peer_session--;
 	l->session++;
 	l->mtu = l->advertised_mtu;
+	l->pl.state = TIPC_PL_BASE;
+	l->pl.pmtu = TIPC_BASE_PLPMTU;
+	l->pl.probe_size = TIPC_BASE_PLPMTU;
+	l->pl.count = 0;
+	l->pl.probe_high = 0;
 
 	spin_lock_bh(&l->wakeupq.lock);
 	skb_queue_splice_init(&l->wakeupq, &list);
diff --git a/net/tipc/link.h b/net/tipc/link.h
index a16f401fdabd..30bee2562987 100644
--- a/net/tipc/link.h
+++ b/net/tipc/link.h
@@ -66,6 +66,26 @@ enum {
 	TIPC_LINK_SND_STATE    = (1 << 2)
 };
 
+/* PLPMTUD state
+ */
+enum {
+	TIPC_PL_DISABLED,
+	TIPC_PL_BASE,
+	TIPC_PL_SEARCH,
+	TIPC_PL_COMPLETE,
+	TIPC_PL_ERROR,
+};
+
+#define	TIPC_BASE_PLPMTU	1200
+#define	TIPC_MAX_PLPMTU		9000
+#define	TIPC_MIN_PLPMTU		512
+
+#define	TIPC_MAX_PROBES		3
+#define	TIPC_PROBE_INTERVAL	10
+
+#define	TIPC_PL_BIG_STEP	32
+#define	TIPC_PL_MIN_STEP	4
+
 /* Starting value for maximum packet size negotiation on unicast links
  * (unless bearer MTU is less)
  */
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
