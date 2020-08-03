Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 462DC23A96A
	for <lists+tipc-discussion@lfdr.de>; Mon,  3 Aug 2020 17:35:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k2cUS-0006ae-Ng; Mon, 03 Aug 2020 15:35:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1k2cUR-0006aT-AC
 for tipc-discussion@lists.sourceforge.net; Mon, 03 Aug 2020 15:35:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gLUrVb6fxflKlvAlZUcaIiwSuEfwUbLcDbN7BzzKqGA=; b=VmBNGS95pZBAhr3Rcwm0sYlX1p
 ZcuskBI2/vMLVJCPiCkUiiECZNo2NQk89tvR9Z5cxv+3eaGIk78c/kWZ2IrSHuxN3POn2Zraa55sp
 GIjz225pdALSG/RxxjYPfuFCfWrRH4wBdN6Zoo3nuaGyMhrkzPkSryHHjUF3ku0YEAwc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gLUrVb6fxflKlvAlZUcaIiwSuEfwUbLcDbN7BzzKqGA=; b=MaR1pHSAzs9bzmbeR4UsBf+YDF
 JbAmgMsTNzMuxWvepFX7BsIHzt+DjfIM8dx7pIQ01h+a3F0KonWT0OBSBzR5AwDE61UnydOPOucQZ
 cTC4EkOWNMc+5fIZHrqxyGQPxCQhlfnum+JVfbnt6u/Q3lIOlcTfs2J+7icq5Tt8e+rs=;
Received: from mail-pj1-f68.google.com ([209.85.216.68])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k2cUP-007tjY-FG
 for tipc-discussion@lists.sourceforge.net; Mon, 03 Aug 2020 15:35:03 +0000
Received: by mail-pj1-f68.google.com with SMTP id d4so1632401pjx.5
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 03 Aug 2020 08:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=gLUrVb6fxflKlvAlZUcaIiwSuEfwUbLcDbN7BzzKqGA=;
 b=RpX/RSTQkXqSeAFoi/pJM7IEWQdwaAtBpJ/GE95ye30zS/Q2bfRpCpO3D7EfTyF9MD
 gtGLxE9zL/4DdNgHIvm7pCzjtlQHCCx5Usg1tbEVG9YK452Fd6KmhXVg+g9uIqdGtlTk
 j6G7w96S+VnUQH70gy3PlrNqhSlCq+DnI+E63LKbi69DfsyNjt0AGFVumSIPAHAueW6L
 HDeK536pok1A/bnG8YDOmTGXn12XL7jpg8hlEpfVYpKKGD1K2hfhwLt9MWQNs280cTl6
 aouMK7EzsHpyJy2RHO0GTKQIZvCYcnhPRY9OatUKQzc40qzdGbZJbjQ/MdQVOwmG9a18
 3zdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gLUrVb6fxflKlvAlZUcaIiwSuEfwUbLcDbN7BzzKqGA=;
 b=ZHb0i5xcJ/pc4fOZDK3cHF3oc/6sw5tgcB8hVhCWnbNF+S7Blz0qDCiqSI4CyBRyi9
 FKu/gXXGObIEei7OHGc/xFB/NrF1ygWwqNRlXTXfSx4i2vluKAEITeiBQQDKyVDX7Wwz
 DCIn/JCZarjxFTb54jO4BdNL2ktqrGJUWTPDXv555qGjBF16BeWbsK/jAMpiGxmuGuCE
 ge/sYUb9fgcOw6LMik+zLQ+11MxqRxcOEltA08nWYSkomtF3+sMo+NMMK1zm+3YuKFHF
 IAW0ppmgOJEdN0nfYm7yTQP5OWWljlG5gQsJug4G3Emcy+SNOythuMZV1jS8bbhJAw5j
 3stg==
X-Gm-Message-State: AOAM533n87y7nLuv35qFzzDCab7+4Kt15nyunlvTCFQGSQ81GFsb/CFX
 4MZmvLCYDrCS0eP7i2jJZms=
X-Google-Smtp-Source: ABdhPJx4ZnsTIHhcCP4u+MtEz8eyZE+rVNYQ7w0b8vU7QR8LK+F9gkCg/oKXqummosn0PQlvhWRbDw==
X-Received: by 2002:a17:90a:9b88:: with SMTP id
 g8mr17880562pjp.143.1596468896032; 
 Mon, 03 Aug 2020 08:34:56 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id j13sm19918184pfa.149.2020.08.03.08.34.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Aug 2020 08:34:55 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>
Date: Mon,  3 Aug 2020 23:34:45 +0800
Message-Id: <cover.1596468610.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1k2cUP-007tjY-FG
Subject: [tipc-discussion] [PATCH net 0/2] net: fix a mcast issue for tipc
 udp media
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
Cc: Jon Maloy <jon.maloy@ericsson.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 tipc-discussion@lists.sourceforge.net, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Patch 1 is to add a function to get the dev by source address,
whcih will be used by Patch 2.

Xin Long (2):
  ipv6: add ipv6_dev_find()
  tipc: set ub->ifindex for local ipv6 address

 include/net/addrconf.h |  2 ++
 net/ipv6/addrconf.c    | 39 +++++++++++++++++++++++++++++++++++++++
 net/tipc/udp_media.c   |  8 ++++++++
 3 files changed, 49 insertions(+)

-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
