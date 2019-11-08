Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F6DF3EF8
	for <lists+tipc-discussion@lfdr.de>; Fri,  8 Nov 2019 05:37:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSw1A-0004O5-Mb; Fri, 08 Nov 2019 04:37:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iSw19-0004Nv-AK
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 04:37:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bORllFmP6P/CNuo03uMx+3reSIHQtGKBB4p8rK1aN6M=; b=g8ZrBK+ARkej4jT3VZc9JEenoO
 PYYl5H+Ubf6p+vHfa5J9EjdBWRSJQC6yulAR7/AkbCLj09KkuOc3gXAPMcPIL71v3h9LQxjlPDobc
 m7dGiLcDu3rjXRsjOc2tLfeYL7qrTFSAvbsfa9StgqekXzGc3kdfX2Zk0cRosLyBggwg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bORllFmP6P/CNuo03uMx+3reSIHQtGKBB4p8rK1aN6M=; b=kw8cYCwmlFV6uEWSNgzjz2LTs+
 xXNkHfhO6cm0V6kZZdi6rlNpS77E1cBZk5KKXWqrfnpZna4OEsvLadLCoSfJUmHbupYgzhyH5xSqz
 XWTD5NoWMXGOprOow3KzGJ6IFYVhRpP2Duq67oTjErEtS4tQFX8PC7pDSxJ+FnQ3WfJw=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSw15-004UTP-J1
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 04:37:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 936ED4AB10;
 Fri,  8 Nov 2019 15:36:52 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1573187812; bh=CiG6XRYW3SlNtK
 R525Q0q9dYaV26AhlMKV0InFADhwI=; b=neNSfr2cjz9uKM0RKyYSaah3YRgBjY
 RqdMkLBm1Gh5UDR7gV55V+vPEo+zAX4bYZrTazOYRE8urQio8rm4oFXYN6GF6NFU
 KR0q63/vJjJQ9iBu2SCKd2MYNSP673WJOc473EC/P9/JHFI5MW9RamYP6gVHJtox
 ZozPKKOBrgKmQ=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id g_dY7DmBSiKG; Fri,  8 Nov 2019 15:36:52 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id EEB4D4AB12;
 Fri,  8 Nov 2019 15:36:51 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 9C1DE4AB10;
 Fri,  8 Nov 2019 15:36:50 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'David Miller'" <davem@davemloft.net>
References: <20191108014213.32219-1-tuong.t.lien@dektech.com.au>
 <20191107.200700.707955577326790302.davem@davemloft.net>
In-Reply-To: <20191107.200700.707955577326790302.davem@davemloft.net>
Date: Fri, 8 Nov 2019 11:36:49 +0700
Message-ID: <1a2e01d595ee$23eae790$6bc0b6b0$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHp/2WKaQBaVeetud7VXidxs8T4VQEexPnsp07koDA=
Content-Language: en-us
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: davemloft.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iSw15-004UTP-J1
Subject: Re: [tipc-discussion] [net-next 0/5] TIPC encryption
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
Cc: tipc-discussion@lists.sourceforge.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

You are right, David.
I am going to resend the v2 series with an update for it.

Thanks/Tuong

-----Original Message-----
From: David Miller <davem@davemloft.net> 
Sent: Friday, November 8, 2019 11:07 AM
To: tuong.t.lien@dektech.com.au
Cc: jon.maloy@ericsson.com; maloy@donjonn.com; ying.xue@windriver.com;
netdev@vger.kernel.org; tipc-discussion@lists.sourceforge.net
Subject: Re: [net-next 0/5] TIPC encryption

From: Tuong Lien <tuong.t.lien@dektech.com.au>
Date: Fri,  8 Nov 2019 08:42:08 +0700

> This series provides TIPC encryption feature, kernel part. There will be
> another one in the 'iproute2/tipc' for user space to set key.

If gcm(aes) is the only algorithm you accept, you will need to express
this dependency in the Kconfig file.  Otherwise it is pointless to
turn on the TIPC crypto Kconfig option.



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
