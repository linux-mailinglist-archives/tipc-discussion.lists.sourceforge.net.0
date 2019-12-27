Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 999DE12B08D
	for <lists+tipc-discussion@lfdr.de>; Fri, 27 Dec 2019 03:22:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ikfGz-0004bL-8W; Fri, 27 Dec 2019 02:22:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1ikfGy-0004bE-0B
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Dec 2019 02:22:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TSYCNMyMu0krcMaJYzxsep/xSihcyFmq0nQpsVeZPi8=; b=DnU3Aac+VTkLJsBAYbcWkle1pQ
 gFMqQb/sl8PhERmNeoYl00mJc48VWQwiltxGMEs1hiI6keeQPe8yXR/Yh0fiJyoS+r7dN7MMqxibE
 Mxx0GGwUaOriG23Z+HTkuMGiitBGsoDROmqM9Rpo08FBNDa+3QGvX9BPCPZA2WIV4TRY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TSYCNMyMu0krcMaJYzxsep/xSihcyFmq0nQpsVeZPi8=; b=QXxPXwexKNLwT4Jnk6/2/VbsAi
 dt57iDTexk36MHIackFOjqUm9LA9Y2J534VjhyiaXaPZJOLTwlEao3Ai9Z6N6ke8XDdAksH9p3g/4
 bn4s8xVT2UD9WBv1Y3lkV5fnL6YBqNOTd/RN8P6aIZQcAReuFwll9Aj9vzbrreNKbmkA=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ikfGt-00EvkH-4D
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Dec 2019 02:22:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 5B80E4A30C;
 Fri, 27 Dec 2019 13:22:27 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1577413347; bh=dDzHUHmCaCunGL
 ZoeC1TknKUZ/fkzN7iFQ8dR5EL/fM=; b=HS6/Wpl2k0y+55l7yagqYve/U5xxvN
 GWDhMPZ4yIfGeOv+zxI0MPDIovNWdG8WoAzohc0p+FdF+v42Uo1XmTBTZtVN8ppj
 UCrLZM7iTAl0vbs2FnmabFG3yO8Yy23c9tsf/W4g/c3xXJVN+VR9A4kwogbrptnt
 7Xj1ltPT22ydI=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id wtb6XSxMReSa; Fri, 27 Dec 2019 13:22:27 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id D7C054A30D;
 Fri, 27 Dec 2019 13:22:26 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id C30B14A30C;
 Fri, 27 Dec 2019 13:22:25 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Ying Xue'" <ying.xue@windriver.com>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20191224080551.28379-1-tuong.t.lien@dektech.com.au>
 <25A14D9CFAB7B34FB9440F90AFD35233013CB15029@ALA-MBD.corp.ad.wrs.com>
 <07f501d5bb88$6eba09d0$4c2e1d70$@dektech.com.au>
 <5061b76c-652d-1d92-1528-9934d947a112@windriver.com>
 <086501d5bbbc$676e8640$364b92c0$@dektech.com.au>
 <f93eecc7-9fff-5bab-61b4-5bfd6d55cb7b@windriver.com>
 <087801d5bbd8$a970ce10$fc526a30$@dektech.com.au>
In-Reply-To: <087801d5bbd8$a970ce10$fc526a30$@dektech.com.au>
Date: Fri, 27 Dec 2019 09:22:24 +0700
Message-ID: <088701d5bc5c$7b092e30$711b8a90$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJ9ammvOgxW261btpJtn+W+DMblzQJ13mfoAu5pv14BvJi+gAGZ+1ZiAojxsC4BrbhVAKYWTADA
Content-Language: en-us
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ikfGt-00EvkH-4D
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Ying,

Thinking more about this...
I suppose we can even remove the function and utilize the generic macro
'tipc_wait_for_cond()' but with the new condition, that is much simpler and
also saves some footprint.
The 'tipc_sk_connected()' condition is really what we should expect in this
case instead.
So, in the case of 'TIPC_DISCONNECTING', regardless of whether we have a
'sk->sk_err', it will return that error or '-ETIMEOUT' but never '0'.
I will send the patch v2 for your review.

BR/Tuong

-----Original Message-----
From: Tuong Lien Tong <tuong.t.lien@dektech.com.au> 
Sent: Thursday, December 26, 2019 5:39 PM
To: 'Ying Xue' <ying.xue@windriver.com>;
tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com;
maloy@donjonn.com
Subject: Re: [tipc-discussion] [net] tipc: fix wrong connect() return code

What about this?

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 6ebd809ef207..04f035bcc272 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2446,7 +2446,7 @@ static int tipc_wait_for_connect(struct socket *sock,
long *timeo_p)
                done = sk_wait_event(sk, timeo_p,
                                     sk->sk_state != TIPC_CONNECTING,
&wait);
                remove_wait_queue(sk_sleep(sk), &wait);
-       } while (!done);
+       } while (!tipc_sk_connected(sk));
        return 0;
 }

BR/Tuong

-----Original Message-----
From: Ying Xue <ying.xue@windriver.com> 
Sent: Thursday, December 26, 2019 2:55 PM
To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>;
tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com;
maloy@donjonn.com
Subject: Re: [net] tipc: fix wrong connect() return code

On 12/26/19 3:16 PM, Tuong Lien Tong wrote:
> Sorry, my mistake! I thought it was "while (!done || !sk->sk_err)"...
> But, this is really confusing and one might ask why we continue the loop
while the socket has encountered an error (sk-> sk_err! = 0)???

This is totally reasonable because it can make code simpler.
[Tuong]: but a performance hit since it almost looks like the sk_err has to
be read twice?

> Moreover, it's not necessarily the "sk_err" will be the only case,
> For example:
> 	sk->sk_state != TIPC_CONNECTING but sk->sk_err = 0 (somehow) and a
pending/interrupt signal

If sk->sk_state is changed from TIPC_CONNECTING to TIPC_ESTABLISHED,
sk->sk_err should be kept 0, but if sk->sk_state is changed to other
states, sk->sk_err must be set with a proper error code in socket
receive path, otherwise, it's a bug.

However, there might be one below race condition:

sk->sk_state is set to TIPC_DISCONNECTING, but before sk->sk_err is set
with an error code, the process who calls connect() is woken up by one
single. Even so, the process is still blocked when it tries to hold sock
lock with lock_sock() in sk_wait_event() because the socket lock is
taken in socket receive path. After socket lock is released, the process
will continue being run. But at that moment, sk->sk_err has been set
with an error code. So, this is no problem for us.

> 
> then we should return '-EINTR'?



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
