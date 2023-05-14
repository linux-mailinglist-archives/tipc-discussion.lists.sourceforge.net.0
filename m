Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F98F701F54
	for <lists+tipc-discussion@lfdr.de>; Sun, 14 May 2023 21:52:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pyHls-000322-9K;
	Sun, 14 May 2023 19:52:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1pyHlm-00031o-OT
 for tipc-discussion@lists.sourceforge.net;
 Sun, 14 May 2023 19:52:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OSTE2EBzjtyK1nC8QYLZAUhuBEohE0E+dS8BewQx3HM=; b=MyJB/xFv7pBjsHkohZGrs0CpcD
 qE3VER9N483MnHrIV92e/YRPRnqLrfuZlNpIDA22NY/t3490Ci9y6ATpldYo99JxCrHz+0HOwbZRL
 sJH2kW/vDjQ7hRMLHbzb2r9Xm7ofDeioTH2H6Awqp/+fI3PU55eHcQjem7rj3dKeptzc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OSTE2EBzjtyK1nC8QYLZAUhuBEohE0E+dS8BewQx3HM=; b=k
 p3U+ePTvDA4TzwtqA23ggTV3TS4cJ9mF1NqvuibvJx3kvKomw2Pb4sqwGZ9KrioIa7jIv9/Lx64tH
 nXttlIyIRjBrn5HPEnhFZKRDU0jHCuoN3DeaLWXC2JdZy16DwAVWSabcI6cuwRZHMeZNMBwqWExcu
 ACzaFElMBFK9BAiU=;
Received: from mail-qt1-f171.google.com ([209.85.160.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pyHlm-0005hO-Nr for tipc-discussion@lists.sourceforge.net;
 Sun, 14 May 2023 19:52:39 +0000
Received: by mail-qt1-f171.google.com with SMTP id
 d75a77b69052e-3f443080ef7so26510201cf.1
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 14 May 2023 12:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684093951; x=1686685951;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=OSTE2EBzjtyK1nC8QYLZAUhuBEohE0E+dS8BewQx3HM=;
 b=miXcUjXY7SD9AlRlv5PLIXswujvul1bWGqHGDou99qrvu8a0yMFfq4X4EEL4gUZWA8
 m0HyXb0GtcevTXO4o8oIxnHqKFr0E0ykAK9wEzEEXphTd0csq+YxHcUzt2nWRbQGGsJF
 XF0TMq20ubW1lMD8aLw4SQOQC36GD9hjLii/uvRz116fdyFwW1chv542Uwi5EqpwgZ8i
 NUZLNdb9LMF62zTmNS04LkjdZvMDKwQDy1EWkw7sdyfaBSCd7AlgmbV+YW3WKW3IGwJe
 kaj75eMrTuAW9QX4+l58J9GJitJVSOPO106KWwubRLcmX/UZL1SWihZ+PMmBnbCV4HhF
 MSvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684093951; x=1686685951;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=OSTE2EBzjtyK1nC8QYLZAUhuBEohE0E+dS8BewQx3HM=;
 b=j8z++qbkfAbanFdhFvx3dlkriog0TdFXYiphuT97qMZeLgJhihBjMLXZ/0TnONMaB5
 YqhxDSfTzjbY310PfroH8fHqfwWLspMJlxZ0XHzX9++WwxZunSSCPlNW4GPVvGAfdGeo
 Q4OdProNG8UqCPPy4m4gzopofA2jxH1cAJbSddLNwY/c3JjSf1z0H1ICKsrQAryFrvvH
 m8N2MOF8Kdq/PkmnCHZ/4d4EVWPyX0/7i1TPvh09f27SRX/kCQYrnGsDq4FW4qBh8HlN
 5srLegVNoOoY0ks16uBnPBk4/hzxB2Of7WKCz3j4eFXlma+papeSMGZsjTB39PuwWS+R
 boLw==
X-Gm-Message-State: AC+VfDyMbTssRZTtyRRZfLNxMweHCj9vx8bczO/GkAP4W2KbrJGD5FDY
 aui1CAawvtFzaUTzu8zkTvs=
X-Google-Smtp-Source: ACHHUZ6GFy+ge9X0Ec5T70Wr+aNFhiEgoHC6P/cZeBfbrBk2+3ZzGx6FD0LCQWp4UQMLCQxfw2AAnw==
X-Received: by 2002:ac8:5b01:0:b0:3ef:413b:71be with SMTP id
 m1-20020ac85b01000000b003ef413b71bemr46859040qtw.68.1684093951173; 
 Sun, 14 May 2023 12:52:31 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 fa11-20020a05622a4ccb00b003f517e1fed2sm1069444qtb.15.2023.05.14.12.52.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 May 2023 12:52:30 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Sun, 14 May 2023 15:52:26 -0400
Message-Id: <cover.1684093873.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This patchset fixes a crash caused by a too small MTU carried
 in the activate msg. Note that as such malicious packet does not exist in
 the normal env, the fix won't break any application The 1st patch introduces
 a function to calculate the minimum MTU for the bearer, and the 2nd patch
 fixes the crash with this helper. While at it, the 3rd patch fixes the udp
 bearer mtu update by netli [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.171 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1pyHlm-0005hO-Nr
Subject: [tipc-discussion] [PATCHv3 net 0/3] tipc: fix the mtu update in
 link mtu negotiation
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
Cc: Eric Dumazet <edumazet@google.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

This patchset fixes a crash caused by a too small MTU carried in the
activate msg. Note that as such malicious packet does not exist in
the normal env, the fix won't break any application

The 1st patch introduces a function to calculate the minimum MTU for
the bearer, and the 2nd patch fixes the crash with this helper. While
at it, the 3rd patch fixes the udp bearer mtu update by netlink with
this helper.

Xin Long (3):
  tipc: add tipc_bearer_min_mtu to calculate min mtu
  tipc: do not update mtu if msg_max is too small in mtu negotiation
  tipc: check the bearer min mtu properly when setting it by netlink

 net/tipc/bearer.c    | 17 +++++++++++++++--
 net/tipc/bearer.h    |  3 +++
 net/tipc/link.c      |  9 ++++++---
 net/tipc/udp_media.c |  5 +++--
 4 files changed, 27 insertions(+), 7 deletions(-)

-- 
2.39.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
