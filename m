Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5331F135032
	for <lists+tipc-discussion@lfdr.de>; Thu,  9 Jan 2020 00:58:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ipLDK-00082I-KG; Wed, 08 Jan 2020 23:58:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1ipLDI-000826-J5
 for tipc-discussion@lists.sourceforge.net; Wed, 08 Jan 2020 23:58:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qHoNaKLCC/Z6YwTW1l3XfupIScxIbT/CkA3dojfB9fM=; b=A/1WYcI859PHlEtKjkjmffSsQ2
 +yeyJwuiwlfPTibS8Xt08pi3rUBj1N1546s2QU1/2/rpN8yKy2xIVp2a3Efb8SwRVxLj79t8/FaVQ
 pXshj0RSD4kMP56jQVT6ttIRDzoLo05zLd4y7z7IdFum2hc0ArFqsot69j9ubLevXvTE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qHoNaKLCC/Z6YwTW1l3XfupIScxIbT/CkA3dojfB9fM=; b=N1kslAe8F6aA0z4iUk/4unq/7I
 7VKJoNHjgs5lvhS3eMKGWdh90C+RG8PeVFIMMvFyKVu24Hzdwd6MWTOdmU6HhSxjFjnUG+ZSoO2Dm
 Nw6osgYGfy83m1YlBPtEwhc5NPpgya3qFWmCbbjdwdyhxIGeFqTaNqttDDuPkXajVAPo=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ipLDF-00DzO3-3C
 for tipc-discussion@lists.sourceforge.net; Wed, 08 Jan 2020 23:58:12 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 710291511CAB6;
 Wed,  8 Jan 2020 15:58:03 -0800 (PST)
Date: Wed, 08 Jan 2020 15:58:03 -0800 (PST)
Message-Id: <20200108.155803.2292394746055216594.davem@davemloft.net>
To: tuong.t.lien@dektech.com.au
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200108021900.24802-1-tuong.t.lien@dektech.com.au>
References: <20200108021900.24802-1-tuong.t.lien@dektech.com.au>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 08 Jan 2020 15:58:03 -0800 (PST)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ipLDF-00DzO3-3C
Subject: Re: [tipc-discussion] [net] tipc: fix wrong connect() return code
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
Cc: jmaloy@redhat.com, tipc-discussion@lists.sourceforge.net,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Tuong Lien <tuong.t.lien@dektech.com.au>
Date: Wed,  8 Jan 2020 09:19:00 +0700

> The current 'tipc_wait_for_connect()' function does a wait-loop for the
> condition 'sk->sk_state != TIPC_CONNECTING' to conclude if the socket
> connecting has done. However, when the condition is met, it returns '0'
> even in the case the connecting is actually failed, the socket state is
> set to 'TIPC_DISCONNECTING' (e.g. when the server socket has closed..).
> This results in a wrong return code for the 'connect()' call from user,
> making it believe that the connection is established and go ahead with
> building, sending a message, etc. but finally failed e.g. '-EPIPE'.
> 
> This commit fixes the issue by changing the wait condition to the
> 'tipc_sk_connected(sk)', so the function will return '0' only when the
> connection is really established. Otherwise, either the socket 'sk_err'
> if any or '-ETIMEDOUT'/'-EINTR' will be returned correspondingly.
> 
> Acked-by: Ying Xue <ying.xue@windriver.com>
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
