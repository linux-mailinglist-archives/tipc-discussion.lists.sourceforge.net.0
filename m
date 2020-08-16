Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C1524571A
	for <lists+tipc-discussion@lfdr.de>; Sun, 16 Aug 2020 11:32:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k7F1W-0002V0-Gt; Sun, 16 Aug 2020 09:32:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1k7F1W-0002Uu-2z
 for tipc-discussion@lists.sourceforge.net; Sun, 16 Aug 2020 09:32:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6YIUHvdCuePmezsZ/M+kr5KBJxQIzparQxYUwNvyjsI=; b=ODGZJZR0Timg940HAGtr4wY+Gt
 uB5x0DVbpUSi6aCDnzyZmn30ckEsdanAWp7OsDiJi9YKZNfPlObWS/WpSJi2kyatRX68mtuSLyfkS
 nSUNwFdntQZ3BcsUO32EEPMsTGicALt4879ZLtIVehsngCo9k9p1RxtFo4YtM0Yh5+cU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6YIUHvdCuePmezsZ/M+kr5KBJxQIzparQxYUwNvyjsI=; b=W9nSur2h9iRb54uGnemLvwfrMj
 cHkMRDfu9MVDVXn2x5jC20YDV2fOCje0EYhkLcdZWBKOUhLslOTbD/PIGVhUamEXjeD5pVgu5KCQy
 XZsuT7lN4CjZU+cEbz5DQSdxRDLlEVJjnByGxj6c//YXX+DxCaXSV0MLLaHDZNYqv/Mg=;
Received: from mail-pj1-f68.google.com ([209.85.216.68])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7F1U-00DF4D-UO
 for tipc-discussion@lists.sourceforge.net; Sun, 16 Aug 2020 09:32:18 +0000
Received: by mail-pj1-f68.google.com with SMTP id l60so6321811pjb.3
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 16 Aug 2020 02:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6YIUHvdCuePmezsZ/M+kr5KBJxQIzparQxYUwNvyjsI=;
 b=c7t2dLMQ85deKkMwdIe1OfsuyJMreMatbLpue3gHsz0/ZQnTMSRa+oj73xFUsm3RLO
 R7On+E1lqy++aVXkGLWDSUXDEEp9cB/ponsG5lQbCbIl0dnnRUYXARl8wsoCUStBheoy
 Sd7HTbQOBSprU23hLq16G+w7jlRzQonJqocIi0QdzkjpPc8gydKhVkoEnkeY8oq2bNFb
 WV4H8rx+AIetDhAhZvvlVa2I2K7j7L4Q8MLFqRlDyBOnbrpEyuxdt8nZ8Qv7DCHvYmxr
 qNIlY3ERBMfwfG2qP6r5sM2/yWy3lydZu2s77yXzjmspOAKbXBEms2qAReZ6uHat8bLm
 V9Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6YIUHvdCuePmezsZ/M+kr5KBJxQIzparQxYUwNvyjsI=;
 b=pikOWx3LWtR+ju4f7EV7jBoHWYlZFYN0I9ndPd949NVTg+MTdPG4lvL/1VQtpJfCf7
 rVqFYp5jODMX/ujKb4oX4KvC0a1p1ElxVQ44/BilOm8uhpV8mxWI3PMfXFPm3UIjqroy
 SYUFinW4J6lbVmV1PjRhtsTCX0ICPVC5aqUsACC+MGdXOgOLmUne0L8eLJ6kJBv6uVGL
 msOqOyebekzFOtcSi6OyOg1p+MDP82szMpbC8cK2jSYrCBA6R4CYtVbWJsIUkOMFK7NT
 DNbHgoNInsOTIRahfJiPEngDjyqTL7e8C06seN5Zl/JPgrmeVoOQldLolpK/uCRxXJ0V
 7aKw==
X-Gm-Message-State: AOAM533BA7zCS9nJPiZOevrIMYh0rp21RAiKlDgNJ9NJ5nsD/aBgVBBc
 8ohQgQ+U1o05vpiyKwLiuow=
X-Google-Smtp-Source: ABdhPJz+gAu0iA5RMtNtDn2BLUxZhuIs/n2N8HQ0WUyb6SKC3dF+iu8SdkCR4R6r0p2TxQ8nYMBI8g==
X-Received: by 2002:a17:902:a50e:: with SMTP id
 s14mr7200964plq.164.1597570331287; 
 Sun, 16 Aug 2020 02:32:11 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id jb1sm13578308pjb.9.2020.08.16.02.32.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 Aug 2020 02:32:10 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>
Date: Sun, 16 Aug 2020 17:32:03 +0800
Message-Id: <d20778039a791b9721bb449d493836edb742d1dc.1597570323.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1k7F1U-00DF4D-UO
Subject: [tipc-discussion] [PATCH net] tipc: not enable tipc when ipv6 works
 as a module
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
Cc: Randy Dunlap <rdunlap@infradead.org>, tipc-discussion@lists.sourceforge.net,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

When using ipv6_dev_find() in one module, it requires ipv6 not to
work as a module. Otherwise, this error occurs in build:

  undefined reference to `ipv6_dev_find'.

So fix it by adding "depends on IPV6 || IPV6=n" to tipc/Kconfig,
as it does in sctp/Kconfig.

Fixes: 5a6f6f579178 ("tipc: set ub->ifindex for local ipv6 address")
Reported-by: kernel test robot <lkp@intel.com>
Acked-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/tipc/Kconfig b/net/tipc/Kconfig
index 9dd7802..be1c400 100644
--- a/net/tipc/Kconfig
+++ b/net/tipc/Kconfig
@@ -6,6 +6,7 @@
 menuconfig TIPC
 	tristate "The TIPC Protocol"
 	depends on INET
+	depends on IPV6 || IPV6=n
 	help
 	  The Transparent Inter Process Communication (TIPC) protocol is
 	  specially designed for intra cluster communication. This protocol
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
