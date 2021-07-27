Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E6D3D83CC
	for <lists+tipc-discussion@lfdr.de>; Wed, 28 Jul 2021 01:19:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m8WMQ-0005cV-CF; Tue, 27 Jul 2021 23:19:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jmaloy@redhat.com>) id 1m8WMP-0005cN-05
 for tipc-discussion@lists.sourceforge.net; Tue, 27 Jul 2021 23:19:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NtbGRsPPvuYZWBpHOc4nZqXZ7Nepl9igrBsULgOiFaw=; b=dMhAJdlrX1BnXKwF7cIPyDUdGC
 K7Vx6qxqduqVQurz9fZoh3SS+RN00D3jSSv6CMM3dls1NcfPX6l+YPW5HT4UiXCS/ft7In4pgIAnw
 jGV/G4QrJ29jylH7yBLJkZYu51TkRoWEPZwHA95ebg+Ntg6LJ0q+ofQIpybZqJxTAEo4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NtbGRsPPvuYZWBpHOc4nZqXZ7Nepl9igrBsULgOiFaw=; b=D
 U5VAUEfhzNMko9TOEGsRIcA3lENtz6cHUpRLiHxh0DQKtKCnQqV7VRaDQdCkU+ZETM2RQqC+SNN1e
 T5myohFTLycS6hRZY2Ywtb/A4p4JxzDFacld/L3hl2tHqwzvBrVv7PnavrMwzqizhKXQ5e2jAoYZs
 sfaqrTl0rhbKdwko=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m8WMA-0004JF-SX
 for tipc-discussion@lists.sourceforge.net; Tue, 27 Jul 2021 23:19:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1627427957;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=NtbGRsPPvuYZWBpHOc4nZqXZ7Nepl9igrBsULgOiFaw=;
 b=Nuld00wk1uatSoNcs4UO8bxfv8bo7Mx0Lns+rhBRcCJo4TeUadMC/nWjHsrF5nS8xyXUGz
 F//Pm8d0gCMLfbPH5Zww9WaFx1NeKC6MIF4GFTMiATF9mUA+QY2YsfU5Y0PkEUxw7CIw1B
 gdFxyGoGnb4NIB7PiNe4ehSpJk8Ey3c=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-437-PHmdnHmAOM-IEuf10fBRZw-1; Tue, 27 Jul 2021 19:19:15 -0400
X-MC-Unique: PHmdnHmAOM-IEuf10fBRZw-1
Received: by mail-qk1-f200.google.com with SMTP id
 y3-20020ae9f4030000b02903b916ae903fso454465qkl.6
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 27 Jul 2021 16:19:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=NtbGRsPPvuYZWBpHOc4nZqXZ7Nepl9igrBsULgOiFaw=;
 b=nGyNnkNlIOqMsDJEbBCfLFlYffInRwfOzXVfyntjPtohwOiEM/KbBobAxZ5F4g1sLw
 CTO2YZVl70eb9BAxElslOrYIXjdVUajAWOM0zV+9fm3NzZO8MH/qkL2BbLg7MIeAm4Mw
 HLYLCiCJuDBYSsCyc7VSS4JHWP2Zrwc4d21049ie87s/wHrP07Fr9daT72zV0yunZjXV
 9qeQ6JpAkkIhdbdqTeOsZiqwi+bVeCLatZvqF73+Cp5JGGU39+zl7UeRRM2BU/2YM5aF
 qdJmp6rapFOAVMtTzoGS4kkodpkluRJoBWCzJd+2ETiReBjPYXiZYstyOWDE48jvxaMn
 0CrQ==
X-Gm-Message-State: AOAM532u+1m5sDPTcS7H0Gv8Yc/ECBtS3W9H/rD5jwEsF7Dw2vnqCgj5
 nssmwd5rUs56NElOj5dI50/XPbV/2V1e3EkSX6QaUucwKUihL/790MAZhAhleEyUuKtN7UQ1YTj
 JhHiMIXhgXCZPEmDhjEBBQRBzqaz2h9CXeWE5
X-Received: by 2002:ac8:72d2:: with SMTP id o18mr21491181qtp.170.1627427955567; 
 Tue, 27 Jul 2021 16:19:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxHeGhG4txsVSclsWl2cniYtXVnPVacNdaYZpLmx0OVsq7/wh8kaMtTr+feWghQHmk3NaEtEQ==
X-Received: by 2002:ac8:72d2:: with SMTP id o18mr21491162qtp.170.1627427955318; 
 Tue, 27 Jul 2021 16:19:15 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id t14sm2413630qkm.7.2021.07.27.16.19.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Jul 2021 16:19:14 -0700 (PDT)
To: tipc-discussion@lists.sourceforge.net,
 Tung Nguyen <tung.q.nguyen@dektech.com.au>,
 Hoang Huu Le <hoang.h.le@dektech.com.au>, Xin Long <lucien.xin@gmail.com>,
 Ying Xue <ying.xue@windriver.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <7420c234-2b8e-9c62-5b4a-e10998284b35@redhat.com>
Date: Tue, 27 Jul 2021 19:19:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m8WMA-0004JF-SX
Subject: [tipc-discussion] Strange behavior in socket.c::tipc_sk_enqueue()
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

I did by accident discover a strange behavior in the function 
tipc_sk_enqueue:


static void tipc_sk_enqueue(struct sk_buff_head *inputq,
                             struct sock *sk, u32 dport,
                             struct sk_buff_head *xmitq)
{
         struct tipc_sock *tsk = tipc_sk(sk);
         unsigned long time_limit = jiffies + 2;
         struct sk_buff *skb;
         unsigned int lim;
         atomic_t *dcnt;
         u32 onode;

         while (skb_queue_len(inputq)) {
         if (unlikely(time_after_eq(jiffies, time_limit)))
               return;
         [...]
         }
}

At the moment we call time_after_eq() the two jiffies often
have already passed, and the skb is not dequeued.
I noticed that tipc_sk_rcv() may call tipc_sk_enqueue()
with the same skb dozens of times before the buffer can
be delivered further upwards in the stack.

Needless to say that this cannot be good for performance.

I believe the value of 2 jiffies was hard coded at a time
when machines were slower, and a jiffie represented a much
longer time interval.

Now it is clearly too short, and should be replaced with something
longer and more consisten, e.g. msec_to_jiffies(2).

Can anybody look into this?

Also, I will be on vacation the next two weeks, which means we
should cancel the bi-weekly meeting next Tuesday.

///jon




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
